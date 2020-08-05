package cn.com.dhc.telereport.form;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

//接收表单数据
public class RpAccountFeeRecordTForm {
	private String cityCode;
	private String productCode;
	private String accountFeeTypeCode;
	@DateTimeFormat(pattern = "yyyy-MM-dd")//@NumberFormat
	private Date accountRecordMonth;
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
	public String getAccountFeeTypeCode() {
		return accountFeeTypeCode;
	}
	public void setAccountFeeTypeCode(String accountFeeTypeCode) {
		this.accountFeeTypeCode = accountFeeTypeCode;
	}
	public Date getAccountRecordMonth() {
		return accountRecordMonth;
	}
	public void setAccountRecordMonth(Date accountRecordMonth) {
		this.accountRecordMonth = accountRecordMonth;
	}
	@Override
	public String toString() {
		return "RpAccountFeeRecordTForm [cityCode=" + cityCode + ", productCode=" + productCode
				+ ", accountFeeTypeCode=" + accountFeeTypeCode + ", accountRecordMonth=" + accountRecordMonth + "]";
	}
}