package com.self.dataobjects;

public class LiveOptionDataSymbolNifty {
	
	private int cycleNumber;
	
//	private Time currentDate;

//	private String symbol;

// private Date expDate;
	
//	private String strExpDate;


	private String optionType;

	private float strikePrice;

	private float netChange;
	
	private float ltp;
	
	private float impliedVolatilty;
	
	private long volume;

	private long changeOI;

	private long oi;


/*	
	public Time getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(Time currentDate) {
		this.currentDate = currentDate;
	}
*/
	
/*
	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

*/	
	
/*	public Date getExpDate() {
		return expDate;
	}

	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}
*/
	public String getOptionType() {
		return optionType;
	}

	public void setOptionType(String optionType) {
		this.optionType = optionType;
	}

	public float getStrikePrice() {
		return strikePrice;
	}

	public void setStrikePrice(float strikePrice) {
		this.strikePrice = strikePrice;
	}

	public int getCycleNumber() {
		return cycleNumber;
	}

	public void setCycleNumber(int cycleNumber) {
		this.cycleNumber = cycleNumber;
	}

	public float getNetChange() {
		return netChange;
	}

	public void setNetChange(float netChange) {
		this.netChange = netChange;
	}

	public float getLtp() {
		return ltp;
	}

	public void setLtp(float ltp) {
		this.ltp = ltp;
	}

	public float getImpliedVolatilty() {
		return impliedVolatilty;
	}

	public void setImpliedVolatilty(float impliedVolatilty) {
		this.impliedVolatilty = impliedVolatilty;
	}

	public long getVolume() {
		return volume;
	}

	public void setVolume(long volume) {
		this.volume = volume;
	}

	public long getChangeOI() {
		return changeOI;
	}

	public void setChangeOI(long changeOI) {
		this.changeOI = changeOI;
	}

	public long getOi() {
		return oi;
	}

	public void setOi(long oi) {
		this.oi = oi;
	}

/*	public String getStrExpDate() {
		return strExpDate;
	}

	public void setStrExpDate(String strExpDate) {
		this.strExpDate = strExpDate;
	}

	public String getDateForCycle() {
		return dateForCycle;
	}

	public void setDateForCycle(String dateForCycle) {
		this.dateForCycle = dateForCycle;
	}
*/
	


}
