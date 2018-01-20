package com.self.seleniumscrapper;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.Select;

public class EquityHistorical {
  private WebDriver driver;
  private String baseUrl;
  
  String foldername = "";

  public EquityHistorical(){

	  try {
		setUp();
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

  }
  
  
  public void downloadFile(String symbol) throws Exception {

	  downloadFileByDateRangeFixed2Y(symbol);
}

  @SuppressWarnings("deprecation")
public void setUp() throws Exception {
   // driver = new FirefoxDriver();
    baseUrl = "https://www.nseindia.com/products/content/equities/equities/eq_security.htm";
    // ProfilesIni myprofile = new ProfilesIni();
    
    FirefoxProfile profile = new FirefoxProfile();
    
/*    DesiredCapabilities capabilities = DesiredCapabilities.htmlUnit();
    
    capabilities.setCapability("browser.download.dir", "D:\\NSE_Downloads\\Equity_Historical"
			);
*/ 
    if("Mac OS X".equals(System.getProperty("os.name")))
    {
    		foldername = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";
    }
    else
    {
    		foldername = "D:\\NSE_Downloads\\Equity_Historical";
    }
	profile.setPreference("browser.download.dir", foldername
			);
	profile.setPreference("pref.downloads.disable_button.edit_actions",
			false);
	profile.setPreference("browser.download.folderList", 2);
	profile.setPreference("browser.download.lastDir",
			foldername);
	profile.setPreference("browser.download.manager.closeWhenDone", true);
	profile.setPreference(
			"browser.helperApps.neverAsk.saveToDisk",
			"application/csv, text/csv application/zip application/msexcell application/vnd.ms-excel text/plain");

	// WebDriver driver;
	// if(driver == null){
	
	/*System.setProperty("webdriver.gecko.driver", 
			"D:\\Software\\geckodriver-v0.16.1-win64\\geckodriver.exe");
	*/
	 driver = new FirefoxDriver(profile);
	
	// driver = new HtmlUnitDriver(capabilities);
	
	// 
   driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
   
	  driver.get(baseUrl /*+ "/products/content/equities/equities/eq_security.htm"*/);


  
  

  }

  
  public void downloadFileByDateRange(String symbol,String dateFrom,String DateTo) throws Exception 
  {

	  // driver.get(baseUrl /*+ "/products/content/equities/equities/eq_security.htm"*/);
	  Thread.sleep(500);
  driver.findElement(By.id("symbol")).clear();
  driver.findElement(By.id("symbol")).sendKeys(""+symbol);
  driver.findElement(By.id("rdDateToDate")).click();

  driver.findElement(By.id("fromDate")).click();
  driver.findElement(By.id("fromDate")).clear();
  driver.findElement(By.id("fromDate")).sendKeys(dateFrom);
  
  driver.findElement(By.id("toDate")).click();
  driver.findElement(By.id("toDate")).clear();
  driver.findElement(By.id("toDate")).sendKeys(DateTo);
  
  driver.findElement(By.id("get")).click();
  try {
	driver.findElement(By.id("submitMe")).click();
} catch (Exception e) {
	// TODO Auto-generated catch block
	// e.printStackTrace();
}
  
  try {
	driver.findElement(By.linkText("Download file in csv format")).click();
} catch (Exception e) {
	// TODO Auto-generated catch block
}
  
  Thread.sleep(5000);

  
	  
	  
  }

  
  public void downloadFileByDateRangeFixed2Y(String symbol) throws Exception {

	  // driver.get(baseUrl /*+ "/products/content/equities/equities/eq_security.htm"*/);
	  Thread.sleep(500);
  driver.findElement(By.id("symbol")).clear();
  driver.findElement(By.id("symbol")).sendKeys(""+symbol);
  new Select(driver.findElement(By.id("dateRange"))).selectByVisibleText("24 Months");
  driver.findElement(By.id("get")).click();
  try {
	driver.findElement(By.id("submitMe")).click();
} catch (Exception e) {
	// TODO Auto-generated catch block
	// e.printStackTrace();
}
  driver.findElement(By.linkText("Download file in csv format")).click();
  Thread.sleep(5000);

  }


  public void tearDown() throws Exception {
    driver.quit();
   
  }


}

