package com.freedom.live;

import static com.googlecode.cqengine.codegen.AttributeBytecodeGenerator.createAttributes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.joda.time.DateTime;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.freedom.live.models.BasisForCalls;
import com.freedom.live.models.SelectedInstrument;
import com.freedom.live.repos.BasisForCallsRepository;
import com.freedom.live.repos.SelectedInstrumentRepository;
import com.googlecode.cqengine.ConcurrentIndexedCollection;
import com.googlecode.cqengine.IndexedCollection;
import com.googlecode.cqengine.query.parser.sql.SQLParser;
import com.googlecode.cqengine.resultset.ResultSet;
import com.neovisionaries.ws.client.WebSocketException;
import com.rainmatter.kiteconnect.KiteConnect;
import com.rainmatter.kitehttp.SessionExpiryHook;
import com.rainmatter.kitehttp.exceptions.KiteException;
import com.rainmatter.models.Instrument;
import com.rainmatter.models.UserModel;

@Component
@Service
public class LiveExecutionManager {

	/*
	 * @Autowired private LiveExecutionCycle liveExecutionCycle;
	 * 
	 */

	
	@Autowired private BasisForCallsRepository basisForCallsRepository;
	  
	 
	@Autowired
	private SelectedInstrumentRepository selectedInstrumentRepository;

	@Autowired
	private LiveOptionPriceExtractor liveOptionPriceExtractor;

	@Autowired
	private LiveOrderExecutionService liveOrderExecutionService;

	
	 @Autowired 
	 private LiveStockPriceExtractor liveStockPriceExtractor;
	  

	 @Autowired
	 private LivePositionSyncService livePositionSyncService;

	private String requestToken = "nsmsbsb5woxuvpnjdo83t0lo0gr2l0th";
	
	private boolean askForUserToken = false;

	private KiteConnect kiteConnect;

	private Map<Long, SelectedInstrument> mapTokensToInstrument = new HashMap<Long, SelectedInstrument>();

	private Map<Long, BasisForCalls> mapTokensToStocks = new HashMap<Long, BasisForCalls>();

	private Map<String, String> mapInstrumentToTradingSymbol = new HashMap<String, String>();
	
	SQLParser<Instrument> parser = SQLParser.forPojoWithAttributes(Instrument.class,
			createAttributes(Instrument.class));

	private void init() throws JSONException, KiteException, IOException, WebSocketException {

		initLogin();

		
		Iterable<BasisForCalls> basisList =  basisForCallsRepository.findAll();
		
		Iterable<SelectedInstrument> instrumentList = selectedInstrumentRepository.findAll();

		initWebSocket(instrumentList,basisList);
		


	}

	private void initWebSocket(Iterable<SelectedInstrument> instrumentList, Iterable<BasisForCalls> basisList)
			throws JSONException, IOException, KiteException, WebSocketException {
		// TODO Auto-generated method stub

		List<Instrument> nseInstruments = kiteConnect.getInstruments("NFO");

		ArrayList<Long> tokens = getTokensForInstruments(instrumentList, nseInstruments);

		liveOptionPriceExtractor.setTokens(tokens);

		liveOptionPriceExtractor.tickerUsage(kiteConnect, tokens);

		liveOptionPriceExtractor.setMapTokensToInstrument(mapTokensToInstrument);

		liveOrderExecutionService.setMapInstrumentToTradingSymbol(mapInstrumentToTradingSymbol);

		livePositionSyncService.setMapTokensToInstrument(mapTokensToInstrument);
		
		nseInstruments = kiteConnect.getInstruments("NSE");
		
		ArrayList<Long> tokensForStocks = getTokensForStocks(basisList, nseInstruments);

		liveStockPriceExtractor.setTokens(tokensForStocks);

		liveStockPriceExtractor.tickerUsage(kiteConnect, tokensForStocks);

		liveStockPriceExtractor.setMapTokensToStocks(mapTokensToStocks);		
				
		
	}

	private void initLogin() throws JSONException, KiteException {
		// First you should get request_token, public_token using kitconnect
		// login and then use request_token, public_token, api_secret to make
		// any kiteConnect api call.
		// Initialize KiteSdk with your apiKey.
		kiteConnect = new KiteConnect("pdzapzoa8txw983g");

		// set userId
		kiteConnect.setUserId("DA0646");

		// Get login url
		// String url = kiteConnect.getLoginUrl();

		// Set session expiry callback.
		kiteConnect.registerHook(new SessionExpiryHook() {
			@Override
			public void sessionExpired() {
				System.out.println("session expired");
			}
		});

		// Set request token and public token which are obtained from login
		// process.


		if(askForUserToken)
		{
		  UserModel userModel = kiteConnect.requestAccessToken(requestToken,
		  "zyj7ezutg4dl5rm3m7wj86gfmylye9w9");
		  
		 kiteConnect.setAccessToken(userModel.accessToken);
		 kiteConnect.setPublicToken(userModel.publicToken);
		 
		 sop(" userModel.accessToken = "+userModel.accessToken);
		 
		 sop(" userModel.publicToken = "+userModel.publicToken);

		 return;
		}
		  
		else
		{

		kiteConnect.setAccessToken("oserc0u808vx68otxc23l75egfhb4phj");
		kiteConnect.setPublicToken("bc7a3f28805f8c14ebf8bad3b5b340d4");
		
		}

		
		  
		  // liveStockPriceExtractor.kiteConnect = kiteConnect;

		// liveOptionPriceExtractor.setKiteConnect(kiteConnect);
		
		liveOrderExecutionService.setKiteConnect(kiteConnect);
		
		livePositionSyncService.setKiteConnect(kiteConnect);

	}

	public void manageExecution() throws Exception, KiteException {

		init();
		
		ThreadPoolExecutor executor = new ThreadPoolExecutor(3, 5, 0L, TimeUnit.MILLISECONDS,
				new LinkedBlockingQueue<Runnable>());
		
		Callable<?> callableROS = new Callable<Object>() {
			public String call() throws Exception {
				liveOrderExecutionService.runOrderService();
				return "";
			}

		};

		executor.submit(callableROS);

		Callable<?> callableRSS = new Callable<Object>() {
			public String call() throws Exception {
				livePositionSyncService.runSyncService();
				return "";
			}

		};

		executor.submit(callableRSS);


		
		

		boolean isValidRange = true; // checkTimeRange(); // true;

		if (isValidRange) {

		}

	}

	private void sop(String text) {

		System.out.println(text);
	}

	
	private ArrayList<Long> getTokensForInstruments(Iterable<SelectedInstrument> selectedIinstrumentList,
			List<Instrument> nseInstruments) {

		ArrayList<Long> tokens = new ArrayList<Long>();


		
		IndexedCollection<Instrument> instruments = new ConcurrentIndexedCollection<Instrument>();
		instruments.addAll(nseInstruments);

		for (SelectedInstrument selectedInstrument : selectedIinstrumentList) {

			String symbol = selectedInstrument.getSymbol().trim();

			String optionType = selectedInstrument.getOption_type().trim();

			String optionStrikePrice = ("" + selectedInstrument.getOption_strike_price()).trim();

			String expiry_date_full = selectedInstrument.getExpiry_date_full().trim();

			String expiry_date_prefix = selectedInstrument.getExpiry_date_prefix().trim();

			ResultSet<Instrument> results = null;
			try {
				results = parser.retrieve(instruments,
						"SELECT * FROM instruments WHERE (" + "tradingsymbol like '%" + symbol 
								+ expiry_date_prefix
								+ "%' " + "AND instrument_type = '" + optionType + "' " 
								+ "AND strike = '"
								+ optionStrikePrice + "' "
								+ "AND expiry = '" + expiry_date_full + "' )");

				if (results.isNotEmpty()) {

					if (results.size() == 1) {

						Instrument targetInstrument = results.uniqueResult();
						Long instrumentToken = targetInstrument.getInstrument_token();
						tokens.add(instrumentToken);

						mapInstrumentToTradingSymbol.put(symbol + optionType + optionStrikePrice,
								targetInstrument.getTradingsymbol());

						mapTokensToInstrument.put(instrumentToken, selectedInstrument);

						liveOptionPriceExtractor.mapGlobalVolumes.put(instrumentToken, 0L);

						liveOptionPriceExtractor.mapGlobalTimeStamps.put(instrumentToken, new DateTime());

					}
					/*
					 * else {
					 * 
					 * //
					 * tokens.add(results.iterator().next().getInstrument_token(
					 * )); for(Instrument instrument : results )
					 * 
					 * { System.out.println(instrument.tradingsymbol);
					 * 
					 * }
					 * 
					 * }
					 */
				}

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return tokens;

	}

	
	private ArrayList<Long> getTokensForStocks(Iterable<BasisForCalls> stocksList,
			List<Instrument> nseInstruments) {

		ArrayList<Long> tokens = new ArrayList<Long>();

		IndexedCollection<Instrument> instruments = new ConcurrentIndexedCollection<Instrument>();
		
		instruments.addAll(nseInstruments);

		for (BasisForCalls selectedStock : stocksList) {

			String symbol = selectedStock.getSymbol().trim();


			ResultSet<Instrument> results = null;
			try {
				results = parser.retrieve(instruments,
						"SELECT * FROM instruments WHERE (" + "tradingsymbol = '" + symbol
								+ "' " +  ")");

				if (results.isNotEmpty()) {

					if (results.size() == 1) {

						Instrument targetInstrument = results.uniqueResult();
						
						Long instrumentToken = targetInstrument.getInstrument_token();
						
						tokens.add(instrumentToken);

						mapTokensToStocks.put(instrumentToken, selectedStock);

						liveStockPriceExtractor.mapGlobalVolumes.put(instrumentToken, 0L);

					}
					/*
					 * else {
					 * 
					 * //
					 * tokens.add(results.iterator().next().getInstrument_token(
					 * )); for(Instrument instrument : results )
					 * 
					 * { System.out.println(instrument.tradingsymbol);
					 * 
					 * }
					 * 
					 * }
					 */
				}

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return tokens;

	}


	public static void main(String[] args) throws JSONException, IOException, WebSocketException, KiteException {

		LiveExecutionManager test = new LiveExecutionManager();

		test.init();
	}

}
