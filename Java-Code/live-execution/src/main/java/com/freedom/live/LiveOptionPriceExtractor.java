package com.freedom.live;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveOptionPriceData;
import com.freedom.live.models.SelectedInstrument;
import com.freedom.live.repos.LiveOptionPriceDataRepository;
import com.neovisionaries.ws.client.WebSocketException;
import com.rainmatter.kiteconnect.KiteConnect;
import com.rainmatter.kitehttp.exceptions.KiteException;
import com.rainmatter.models.Depth;
import com.rainmatter.models.Tick;
import com.rainmatter.ticker.KiteTicker;
import com.rainmatter.ticker.OnConnect;
import com.rainmatter.ticker.OnDisconnect;
import com.rainmatter.ticker.OnTick;

@Component
public class LiveOptionPriceExtractor {

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
	private LiveOptionPriceDataRepository liveOptionPriceDataRepository;

	List<SelectedInstrument> instrumentList = new ArrayList<>();

	Map<Long, Long> mapGlobalVolumes;

	List<LiveOptionPriceData> liveDataObjs = new ArrayList<>();

	private KiteConnect kiteConnect;

	private List<Long> tokens = new ArrayList<Long>();

	private Map<Long, SelectedInstrument> mapTokensToInstrument = new HashMap<Long, SelectedInstrument>();

	Map<Long, DateTime> mapGlobalTimeStamps;

	public LiveOptionPriceExtractor() {

		try {
			this.instrumentList = new ArrayList<SelectedInstrument>();
			// this.mapUrlDocuments = new HashMap<String, Document>();
			this.mapGlobalVolumes = new HashMap<Long, Long>();
			this.liveDataObjs = new ArrayList<>();
			this.mapGlobalTimeStamps = new HashMap<Long, DateTime>();
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
				
				try {
					tickerProvider.connect();
					boolean isConnected = tickerProvider.isConnectionOpen();
					System.out.println(isConnected);
					tickerProvider.subscribe(tokens);
					tickerProvider.setMode(tokens, KiteTicker.modeQuote);
				} catch (IOException e) {
					e.printStackTrace();
				} catch (WebSocketException e) {
					e.printStackTrace();
				} catch (KiteException e) {
					e.printStackTrace();
				}
				
				
			}
		});

		tickerProvider.setOnTickerArrivalListener(new OnTick() {
			@Override
			public void onTick(ArrayList<Tick> ticks) {
				sop("%%^^%% For Option Data, ticks size = " + ticks.size() + 
						" at current time = " + new DateTime());

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
		tickerProvider.setMode(tokens, KiteTicker.modeFull);

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

			SelectedInstrument selectedInstrument = mapTokensToInstrument.get(tokenValue);

			Long lastVolume = mapGlobalVolumes.get(tokenValue);

			/*
			 * if(lastVolume == null){ lastVolume = 0L; }
			 */

			DateTime newTimeStamp = new DateTime();

			DateTime oldTimeStamp = mapGlobalTimeStamps.get(tokenValue);

			boolean isNewTimeStampReading = false;

			long difference = newTimeStamp.getMillis() - oldTimeStamp.getMillis();

			if (difference >= 10000) {
				isNewTimeStampReading = true;
			}
			oldTimeStamp = null;

			if (currentVolume > lastVolume || isNewTimeStampReading) {

				mapGlobalVolumes.put(tokenValue, currentVolume);
				
				mapGlobalTimeStamps.put(tokenValue, newTimeStamp);


				LiveOptionPriceData liveOptionPriceData = new LiveOptionPriceData();

				liveOptionPriceData.setCurr_time(new DateTime());
				liveOptionPriceData.setSymbol(selectedInstrument.getSymbol());
				liveOptionPriceData.setOption_type(selectedInstrument.getOption_type());
				liveOptionPriceData.setOption_strike_price(selectedInstrument.getOption_strike_price());
				liveOptionPriceData.setVolume(currentVolume);
				liveOptionPriceData.setLast_price((float) tick.getLastTradedPrice());

				Map<String, ArrayList<Depth>> tickDepthMap = tick.getMarketDepth();

				ArrayList<Depth> buyDepth = tickDepthMap.get("buy");

				ArrayList<Depth> sellDepth = tickDepthMap.get("sell");

				liveOptionPriceData.setBid_price_1((float) buyDepth.get(0).getPrice());
				liveOptionPriceData.setBid_quantity_1(buyDepth.get(0).getQuantity());
				liveOptionPriceData.setBid_price_2((float) buyDepth.get(1).getPrice());
				liveOptionPriceData.setBid_quantity_2(buyDepth.get(1).getQuantity());
				liveOptionPriceData.setOffer_price_1((float) sellDepth.get(0).getPrice());
				liveOptionPriceData.setOffer_quantity_1(sellDepth.get(0).getQuantity());
				liveOptionPriceData.setOffer_price_2((float) sellDepth.get(1).getPrice());
				liveOptionPriceData.setOffer_quantity_2(sellDepth.get(1).getQuantity());

				putDatainList(liveOptionPriceData);

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
					liveOptionPriceDataRepository.save(liveDataObjs);

					sop("^^^^^^^ &&&&&&& SUCCESSFULY SAVED");

				} catch (Exception e) {

					System.out.println("^^^^^^^ &&&&&&& ERROR WHILE SAVING ^^^^^^^ &&&&&&&" + e.getMessage());
				}

				liveDataObjs = new ArrayList<LiveOptionPriceData>();
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	private void putDatainList(LiveOptionPriceData LiveOptionPriceData) {

		synchronized (liveDataObjs) {
			liveDataObjs.add(LiveOptionPriceData);
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

	public Map<Long, SelectedInstrument> getMapTokensToInstrument() {
		return mapTokensToInstrument;
	}

	public void setMapTokensToInstrument(Map<Long, SelectedInstrument> mapTokensToInstrument) {
		this.mapTokensToInstrument = mapTokensToInstrument;
	}
	
	private void sop(String text) {

		// System.out.println(text);
	}



}