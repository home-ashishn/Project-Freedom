package com.freedom.live;

import static com.googlecode.cqengine.codegen.AttributeBytecodeGenerator.createAttributes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.joda.time.DateTime;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

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

@Component
@Service
public class LiveExecutionManager {

	/*
	 * @Autowired private LiveExecutionCycle liveExecutionCycle;
	 * 
	 */

/*	
	@Autowired
	private BasisForCallsRepository basisForCallsRepository;

*/	
	@Autowired
	private SelectedInstrumentRepository selectedInstrumentRepository;

	@Autowired
	private LiveOptionPriceExtractor liveOptionPriceExtractor;
	
	@Autowired
	private LiveOrderExecutionService liveOrderExecutionService;	
	

/*	
	@Autowired
	private LiveStockPriceExtractor liveStockPriceExtractor;

*/	
	private String requestToken = "mhlm9l1br2cjsujrbfl65c8hhotwwghg";

	private KiteConnect kiteConnect;

	private Map<Long,SelectedInstrument> mapTokensToInstrument = new HashMap<Long,SelectedInstrument>();
	
	private void init() throws JSONException, KiteException, IOException, WebSocketException {

		initLogin();

/*
		Iterable<BasisForCalls> basisList = basisForCallsRepository.findAll();

		for (BasisForCalls basisForCalls : basisList) {

			String symbol = basisForCalls.getSymbol();// "BATAINDIA" + i;

			liveStockPriceExtractor.symbols.add(symbol);

			liveStockPriceExtractor.mapUrls.put(symbol, basisForCalls.getUrl());

			long globalVolume = new Long(0);
			liveStockPriceExtractor.mapGlobalVolumes.put(symbol, globalVolume);

		}
*/
		Iterable<SelectedInstrument> instrumentList = selectedInstrumentRepository.findAll();


		initWebSocket(instrumentList);

	}

	private void initWebSocket(Iterable<SelectedInstrument> instrumentList)
			throws JSONException, IOException, KiteException, WebSocketException {
		// TODO Auto-generated method stub

		List<Instrument> nseInstruments = kiteConnect.getInstruments("NFO");

		ArrayList<Long> tokens = getTokens(instrumentList, nseInstruments);
		
		liveOptionPriceExtractor.setTokens(tokens);
		
		liveOptionPriceExtractor.tickerUsage(kiteConnect, tokens);
		
		liveOptionPriceExtractor.setMapTokensToInstrument(mapTokensToInstrument);
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

/*		
		UserModel userModel = kiteConnect.requestAccessToken(requestToken, "zyj7ezutg4dl5rm3m7wj86gfmylye9w9");
		
		kiteConnect.setAccessToken(userModel.accessToken);
		kiteConnect.setPublicToken(userModel.publicToken);

*/
		
		kiteConnect.setAccessToken("luzel1k6ime45z3awpt1zgrelvm1x3ng");
		kiteConnect.setPublicToken("ed757b5063a3821e588a4483cd76a845");


		// liveStockPriceExtractor.kiteConnect = kiteConnect;

		liveOptionPriceExtractor.setKiteConnect(kiteConnect);

	}

	public void manageExecution() throws Exception, KiteException {

		// init();
		
		liveOrderExecutionService.runOrderService();

		boolean isValidRange = true; // checkTimeRange(); // true;

		if (isValidRange) {

		}

	}

	private void sop(String text) {

		System.out.println(text);
	}

	private ArrayList<Long> getTokens(Iterable<SelectedInstrument> selectedIinstrumentList,
			List<Instrument> nseInstruments) {

		ArrayList<Long> tokens = new ArrayList<Long>();

		SQLParser<Instrument> parser = SQLParser.forPojoWithAttributes(Instrument.class,
				createAttributes(Instrument.class));
		IndexedCollection<Instrument> instruments = new ConcurrentIndexedCollection<Instrument>();
		instruments.addAll(nseInstruments);
		


		for (SelectedInstrument selectedInstrument : selectedIinstrumentList) {
			
			String symbol = selectedInstrument.getSymbol();
			
			String optionType = selectedInstrument.getOption_type();
			
			String optionStrikePrice = ""+selectedInstrument.getOption_strike_price();
			
			String expiry_date_full = ""+selectedInstrument.getExpiry_date_full();

			
			String expiry_date_prefix = ""+selectedInstrument.getExpiry_date_prefix();


			
			ResultSet<Instrument> results = null;
			try {
				results = parser.retrieve(instruments,
						"SELECT * FROM instruments WHERE (" 
								+ "tradingsymbol like '%"+symbol+expiry_date_prefix+"%' "
								+ "AND instrument_type = '"+optionType+"' "
								+ "AND strike = '"+optionStrikePrice+"' "
								// + "AND '"+optionStrikePrice+"' like concat(strike,'%') "
								+ "AND expiry = '"+expiry_date_full+"' )");
				
				
				if(results.isNotEmpty()){
					
					if(results.size() == 1)
					{				
						Long instrumentToken = results.uniqueResult().getInstrument_token();
						tokens.add(instrumentToken);
						
						mapTokensToInstrument.put(instrumentToken,selectedInstrument);
						
						liveOptionPriceExtractor.mapGlobalVolumes.put(instrumentToken, 0L);
						
						liveOptionPriceExtractor.mapGlobalTimeStamps.put(instrumentToken, new DateTime());
						
					}
					/*else
					{
						
					// 	tokens.add(results.iterator().next().getInstrument_token());
						for(Instrument instrument : results )
							
						{
							System.out.println(instrument.tradingsymbol);
							
						}
												
					}
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
