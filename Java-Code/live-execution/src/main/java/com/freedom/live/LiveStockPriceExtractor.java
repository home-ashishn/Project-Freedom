package com.freedom.live;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.BasisForCalls;
import com.freedom.live.models.LiveStockData;
import com.freedom.live.repos.LiveStockDataRepository;
import com.neovisionaries.ws.client.WebSocketException;
import com.rainmatter.kiteconnect.KiteConnect;
import com.rainmatter.kitehttp.exceptions.KiteException;
import com.rainmatter.models.Tick;
import com.rainmatter.ticker.KiteTicker;
import com.rainmatter.ticker.OnConnect;
import com.rainmatter.ticker.OnDisconnect;
import com.rainmatter.ticker.OnTick;

@Component
public class LiveStockPriceExtractor {

	/**
	 * @param urlFile
	 *            Path for file which consists of URLs to be scraped
	 * @param outputFile
	 *            File where scrape results will be written
	 * @throws InterruptedException
	 * @throws ExecutionException
	 * @throws TimeoutException
	 */

	@Autowired
	private LiveStockDataRepository liveStockDataRepository;

	List<BasisForCalls> stocksList = new ArrayList<>();

	Map<Long, Long> mapGlobalVolumes;

	List<LiveStockData> liveDataObjs = new ArrayList<>();

	private KiteConnect kiteConnect;

	private List<Long> tokens = new ArrayList<Long>();

	private Map<Long, BasisForCalls> mapTokensToStocks = new HashMap<Long, BasisForCalls>();


	public LiveStockPriceExtractor() {

		try {
			this.stocksList = new ArrayList<BasisForCalls>();
			// this.mapUrlDocuments = new HashMap<String, Document>();
			this.mapGlobalVolumes = new HashMap<Long, Long>();
			this.liveDataObjs = new ArrayList<>();
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	/**
	 * Demonstrates com.rainmatter.ticker connection, subcribing for
	 * instruments, unsubscribing for instruments, set mode of tick data,
	 * com.rainmatter.ticker disconnection
	 */
	public void tickerUsage(KiteConnect kiteConnect, ArrayList<Long> tokens)
			throws IOException, WebSocketException, KiteException {
		/**
		 * To get live price use com.rainmatter.com.rainmatter.ticker websocket
		 * connection. It is recommended to use only one websocket connection at
		 * any point of time and make sure you stop connection, once user goes
		 * out of app.
		 */
		KiteTicker tickerProvider = new KiteTicker(kiteConnect);
		tickerProvider.setOnConnectedListener(new OnConnect() {
			@Override
			public void onConnected() {/*
										 * try {
										 */
				/**
				 * Subscribe ticks for token. By default, all tokens are
				 * subscribed for modeQuote.
				 */
				/*
				 * tickerProvider.subscribe(tokens);
				 * tickerProvider.setMode(tokens, KiteTicker.modeLTP);
				 * 
				 * } catch (IOException e) { e.printStackTrace(); } catch
				 * (WebSocketException e) { e.printStackTrace(); }catch
				 * (KiteException ke){ ke.printStackTrace(); }
				 */}
		});

		tickerProvider.setOnDisconnectedListener(new OnDisconnect() {
			@Override
			public void onDisconnected() {
				// your code goes here
			}
		});

		tickerProvider.setOnTickerArrivalListener(new OnTick() {
			@Override
			public void onTick(ArrayList<Tick> ticks) {
				System.out.println("ticks size = " + ticks.size() + " at current time = " + new DateTime());

				if (ticks.size() > 0) 
				{
					extractTicksData(ticks);
				}
			}

		});

		tickerProvider.setTryReconnection(true);
		// minimum value must be 5 for time interval for reconnection
		tickerProvider.setTimeIntervalForReconnection(5);
		// set number to times com.rainmatter.ticker can try reconnection, for
		// infinite retries use -1
		tickerProvider.setMaxRetries(10);

		/**
		 * connects to com.rainmatter.com.rainmatter.ticker server for getting
		 * live quotes
		 */
		tickerProvider.connect();

		/**
		 * You can check, if websocket connection is open or not using the
		 * following method.
		 */
		boolean isConnected = tickerProvider.isConnectionOpen();

		System.out.println(isConnected);

		tickerProvider.subscribe(tokens);

		/**
		 * set mode is used to set mode in which you need tick for list of
		 * tokens. Ticker allows three modes, modeFull, modeQuote, modeLTP. For
		 * getting only last traded price, use modeLTP For getting last traded
		 * price, last traded quantity, average price, volume traded today,
		 * total sell quantity and total buy quantity, open, high, low, close,
		 * change, use modeQuote For getting all data with depth, use modeFull
		 */
		tickerProvider.setMode(tokens, KiteTicker.modeQuote);

		// Unsubscribe for a token.

		// tickerProvider.unsubscribe(tokens);

		// After using com.rainmatter.com.rainmatter.ticker, close websocket
		// connection.

		// tickerProvider.disconnect();
	}

	private void extractTicksData(ArrayList<Tick> ticks) {

		for (Tick tick : ticks) {

			Long tokenValue = tick.getToken();

			Long currentVolume = (long) tick.getVolumeTradedToday();

			BasisForCalls selectedStock = mapTokensToStocks.get(tokenValue);

			Long lastVolume = mapGlobalVolumes.get(tokenValue);

			if (currentVolume > lastVolume) {

				mapGlobalVolumes.put(tokenValue, currentVolume);
				


				LiveStockData liveStockData = new LiveStockData();

				liveStockData.setCurr_time(new DateTime());
				liveStockData.setSymbol(selectedStock.getSymbol());
				liveStockData.setVolume(currentVolume);
				liveStockData.setPrice((float) tick.getLastTradedPrice());

				putDatainList(liveStockData);

			}

		}

		try {
			if (liveDataObjs.size() >= 5) {
				updateDB();
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	private void updateDB() {

		try {
			synchronized (liveDataObjs) {

				try {
					liveStockDataRepository.save(liveDataObjs);

					sop("^^^^^^^ &&&&&&& SUCCESSFULY SAVED ************* STOCK DATA ");

				} catch (Exception e) {

					sop("^^^^^^^ &&&&&&& ERROR WHILE SAVING ************* STOCK DATA ^^^^^^^ &&&&&&&" + e.getMessage());
				}

				liveDataObjs = new ArrayList<LiveStockData>();
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	private void putDatainList(LiveStockData LiveStockData) {

		synchronized (liveDataObjs) {
			liveDataObjs.add(LiveStockData);
		}

	}

	private void sop(String text) {

		System.out.println(text);
	}

	public List<Long> getTokens() {
		return tokens;
	}

	public void setTokens(List<Long> tokens) {
		this.tokens = tokens;
	}

	public KiteConnect getKiteConnect() {
		return kiteConnect;
	}

	public void setKiteConnect(KiteConnect kiteConnect) {
		this.kiteConnect = kiteConnect;
	}

	public Map<Long, BasisForCalls> getMapTokensToStocks() {
		return mapTokensToStocks;
	}

	public void setMapTokensToStocks(Map<Long, BasisForCalls> mapTokensToStocks) {
		this.mapTokensToStocks = mapTokensToStocks;
	}

}
