package cn.com.dhc.telereport.form;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RpNetBalanceRecordTForm {
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date balanceMonth;
	private String cityCode;
	private String productCode;
	private String balanceSpCode;
	private String balanceTypeCode;
	public Date getBalanceMonth() {
		return balanceMonth;
	}
	public void setBalanceMonth(Date balanceMonth) {
		this.balanceMonth = balanceMonth;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getBalanceSpCode() {
		return balanceSpCode;
	}
	public void setBalanceSpCode(String balanceSpCode) {
		this.balanceSpCode = balanceSpCode;
	}
	public String getBalanceTypeCode() {
		return balanceTypeCode;
	}
	public void setBalanceTypeCode(String balanceTypeCode) {
		this.balanceTypeCode = balanceTypeCode;
	}
	@Override
	public String toString() {
		return "RpNetBalanceRecordTForm [balanceMonth=" + balanceMonth + ", cityCode=" + cityCode + ", productCode="
				+ productCode + ", balanceSpCode=" + balanceSpCode + ", balanceTypeCode=" + balanceTypeCode + "]";
	}
	
}
