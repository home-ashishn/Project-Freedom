package com.freedom.live;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.BasisForCalls;
import com.freedom.live.models.LiveStockData;
import com.freedom.live.repos.LiveStockDataRepository;
import com.neovisionaries.ws.client.WebSocketException;
import com.zerodhatech.kiteconnect.KiteConnect;
import com.zerodhatech.kiteconnect.kitehttp.exceptions.KiteException;
import com.zerodhatech.models.Tick;
import com.zerodhatech.ticker.KiteTicker;
import com.zerodhatech.ticker.OnConnect;
import com.zerodhatech.ticker.OnDisconnect;
import com.zerodhatech.ticker.OnTicks;

@Component
public class LiveStockPriceExtractor {

	/**
	 * @param urlFile    Path for file which consists of URLs to be scraped
	 * @param outputFile File where scrape results will be written
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

	DateTime latestTickTime = new DateTime();

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
	 * Demonstrates com.rainmatter.ticker connection, subcribing for instruments,
	 * unsubscribing for instruments, set mode of tick data, com.rainmatter.ticker
	 * disconnection
	 */
	public void tickerUsage(KiteConnect kiteConnect, ArrayList<Long> tokens)
			throws IOException, WebSocketException, KiteException {
		/**
		 * To get live price use com.rainmatter.com.rainmatter.ticker websocket
		 * connection. It is recommended to use only one websocket connection at any
		 * point of time and make sure you stop connection, once user goes out of app.
		 */
		KiteTicker tickerProvider = new KiteTicker(kiteConnect.getAccessToken(), kiteConnect.getApiKey());
		tickerProvider.setOnConnectedListener(new OnConnect() {
			@Override
			public void onConnected() {

				/*
				 * try { boolean isConnected = tickerProvider.isConnectionOpen();
				 * System.out.println(
				 * "--------- +++++++ from LiveStockPriceExtractor.onConnected, isConnected = "
				 * + isConnected); tickerProvider.subscribe(tokens);
				 * tickerProvider.setMode(tokens, KiteTicker.modeQuote); } catch (IOException e)
				 * { e.printStackTrace(); } catch (WebSocketException e) { e.printStackTrace();
				 * } catch (KiteException e) { e.printStackTrace(); }
				 */

			}
		});

		tickerProvider.setOnDisconnectedListener(new OnDisconnect() {
			@Override
			public void onDisconnected() {

				tickerProvider.connect();
				boolean isConnected = tickerProvider.isConnectionOpen();
				System.out.println(
						"--------- +++++++ from LiveStockPriceExtractor.onDisconnected, isConnected = " + isConnected);
				tickerProvider.subscribe(tokens);
				tickerProvider.setMode(tokens, KiteTicker.modeQuote);
				latestTickTime = new DateTime();

			}
		});

		tickerProvider.setOnTickerArrivalListener(new OnTicks() {
			@Override
			public void onTicks(ArrayList<Tick> ticks) {
				sop("$$$$ For Stock Data, ticks size = " + ticks.size() + " at current time = " + new DateTime());

				if (ticks.size() > 0) {
					extractTicksData(ticks);
					latestTickTime = new DateTime();
				} else {
					DateTime currTime = new DateTime();

					if (currTime.isAfter(latestTickTime.plusSeconds(15))) {
						tickerProvider.disconnect();
					}
				}
			}

		});

		tickerProvider.setTryReconnection(true);
		// minimum value must be 5 for time interval for reconnection
		tickerProvider.setMaximumRetryInterval(5);
		// set number to times com.rainmatter.ticker can try reconnection, for
		// infinite retries use -1
		tickerProvider.setMaximumRetries(10);

		/**
		 * connects to com.rainmatter.com.rainmatter.ticker server for getting live
		 * quotes
		 */
		tickerProvider.connect();

		/**
		 * You can check, if websocket connection is open or not using the following
		 * method.
		 */
		boolean isConnected = tickerProvider.isConnectionOpen();

		System.out.println("isConnected = " + isConnected);

		tickerProvider.subscribe(tokens);

		/**
		 * set mode is used to set mode in which you need tick for list of tokens.
		 * Ticker allows three modes, modeFull, modeQuote, modeLTP. For getting only
		 * last traded price, use modeLTP For getting last traded price, last traded
		 * quantity, average price, volume traded today, total sell quantity and total
		 * buy quantity, open, high, low, close, change, use modeQuote For getting all
		 * data with depth, use modeFull
		 */
		tickerProvider.setMode(tokens, KiteTicker.modeQuote);

		latestTickTime = new DateTime();

		System.out.println("latestTickTime = " + latestTickTime);

		// Unsubscribe for a token.

		// tickerProvider.unsubscribe(tokens);

		// After using com.rainmatter.com.rainmatter.ticker, close websocket
		// connection.

		// tickerProvider.disconnect();
	}

	private void extractTicksData(ArrayList<Tick> ticks) {

		for (Tick tick : ticks) {

			Long tokenValue = tick.getInstrumentToken();

			Long currentVolume = (long) tick.getVolumeTradedToday();

			BasisForCalls selectedStock = mapTokensToStocks.get(tokenValue);

			Long lastVolume = mapGlobalVolumes.get(tokenValue);

			if (currentVolume > (lastVolume * 1.0002)) {

				mapGlobalVolumes.put(tokenValue, currentVolume);

				DateTime currentTime = DateTime.now();

				/*
				 * System.out.
				 * println(" LiveStockPriceExtractor - 444444 555555555 , currentTime zone = "
				 * +currentTime.getZone());
				 * 
				 * System.out.println("LiveStockPriceExtractor - 444444 555555555 for "
				 * +currentTime.getZone() +", currentTime = "+currentTime);
				 */

				if (!((currentTime.getZone().equals(DateTimeZone.forID("Asia/Kolkata")))

						|| (currentTime.getZone().equals(DateTimeZone.forID("Asia/Colombo")))

				)) {
					currentTime = currentTime.plusHours(5);

					currentTime = currentTime.plusMinutes(30);
				}

				// System.out.println("LiveStockPriceExtractor - 77777 88888888 for IST, currentTime = " + currentTime);

				LiveStockData liveStockData = new LiveStockData();

				liveStockData.setCurr_time(currentTime);
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

					System.out.println("^^^^^^^ &&&&&&& ERROR WHILE SAVING ************* STOCK DATA ^^^^^^^ &&&&&&&"
							+ e.getMessage());
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

	private void sop(String text) {

		// System.out.println(text);
	}

}
