package com.self.live.seleniumscrapper;

import java.io.File;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;

import com.self.live.seleniumscrapper.dataobject.LiveStockData;

public class EquityCurrentTime_old {
	private WebDriver driver;
	private String baseUrl;

	String symbol;

	int currSignal;

	String foldername = "";

	public EquityCurrentTime_old(String symbolIn, String url) {

		try {
			this.symbol = symbolIn;
			setUp(url);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@SuppressWarnings("deprecation")
	public void setUp(String url) throws Exception {
		// driver = new FirefoxDriver();
		baseUrl = url;
		// ProfilesIni myprofile = new ProfilesIni();

		// FirefoxProfile profile = new FirefoxProfile(new
		// File("C:\\Users\\ASHISH\\AppData\\Local\\Mozilla\\Firefox\\Profiles\\32iyy0ec.default"));

		FirefoxProfile profile = new FirefoxProfile();

		/*
		 * DesiredCapabilities capabilities = DesiredCapabilities.htmlUnit();
		 * 
		 * capabilities.setCapability("browser.download.dir",
		 * "D:\\NSE_Downloads\\Equity_Historical" );
		 */
		// WebDriver driver;
		// if(driver == null){

		/*
		 * System.setProperty("webdriver.gecko.driver",
		 * "D:\\Software\\geckodriver-v0.16.1-win64\\geckodriver.exe");
		 */
		driver = new FirefoxDriver(profile);

		// driver = new HtmlUnitDriver(capabilities);

		//
		profile.setPreference("browser.cache.disk.enable", false);
		profile.setPreference("browser.cache.memory.enable", false);
		profile.setPreference("browser.cache.offline.enable", false);
		profile.setPreference("network.http.use-cache", false);
		/*
		 * profile.setPreference("plugin.disable_full_page_plugi‌​n_for_types",
		 * "application/pdf,application/vnd.adobe.xfdf,application/vnd.‌​fdf,application/vnd.‌​adobe.xdp+xml"
		 * );
		 */
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);

		driver.get(baseUrl);

		// driver.

	}

	public void refresh() {
		driver.get(baseUrl);

	}

	public LiveStockData downloadCurrentFileFullData() throws Exception {

		LiveStockData liveStockData = new LiveStockData();

		String xpathExpPrice = "//*[@id=\"Nse_Prc_tick\"]/strong";

		WebElement queryPrice = null;
		int attempts = 0;

		try {
			queryPrice = driver.findElement(By.xpath(xpathExpPrice));
		} catch (Exception e) {
			attempts = attempts;
		}

		String lastPrice = "0";

		if (queryPrice != null) {

			while (attempts <= 2 /* && lastPrice.equals("0") */) {
				try {
					lastPrice = queryPrice.getText();
				} catch (Exception e) {
					attempts = attempts;
				}
				attempts++;
			}

			lastPrice = cleanData(lastPrice);
		}
		attempts = 0;

		String xpathExpVolume = "//*[@id=\"nse_volume\"]/strong";

		WebElement queryVolume = null;
		try {
			queryVolume = driver.findElement(By.xpath(xpathExpVolume));
			queryVolume.click();
		} catch (Exception e) {
			attempts = attempts;
		}

		String volume = "0";

		if (queryVolume != null) {
			while (attempts <= 2 /* && volume.equals("0") */) {
				try {
					volume = queryVolume.getText();
				} catch (Exception e) {
					attempts = attempts;
				}
				attempts++;
			}
			volume = cleanData(volume);
		}

		// liveStockData.setCurrentTime(new
		// Time(Calendar.getInstance().getTimeInMillis()));
		liveStockData.setSymbol("" + this.symbol);
		liveStockData.setPrice(new Float(lastPrice));
		liveStockData.setVolume(new Integer(volume));

		return liveStockData;

	}

	private String cleanData(String input) {
		return input.replaceAll(",", "");
	}

	public void tearDown() throws Exception {
		driver.quit();

	}

	public static void main(String[] args) throws Exception {

		/*
		 * EquityCurrentTime currTime = new EquityCurrentTime();
		 * 
		 * currTime.downloadCurrentFileFullData();
		 */}

}
