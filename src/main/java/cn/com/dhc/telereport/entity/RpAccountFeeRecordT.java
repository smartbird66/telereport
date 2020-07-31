package cn.com.dhc.telereport.entity;

import java.util.Date;

public class RpAccountFeeRecordT {
	private String id;
	private String cityCode;
	private String productCode;
	private String accountFeeTypeCode;
	private Date accountRecordMonth;
	private Double accountFee;
	private String accountOperator;
	private String checkStatus;
	private String checkPerson;
	private Date checkTime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public Double getAccountFee() {
		return accountFee;
	}
	public void setAccountFee(Double accountFee) {
		this.accountFee = accountFee;
	}
	public String getAccountOperator() {
		return accountOperator;
	}
	public void setAccountOperator(String accountOperator) {
		this.accountOperator = accountOperator;
	}
	public String getCheckStatus() {
		return checkStatus;
	}
	public void setCheckStatus(String checkStatus) {
		this.checkStatus = checkStatus;
	}
	public String getCheckPerson() {
		return checkPerson;
	}
	public void setCheckPerson(String checkPerson) {
		this.checkPerson = checkPerson;
	}
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}
	@Override
	public String toString() {
		return "RpAccountFeeRecordT [id=" + id + ", cityCode=" + cityCode + ", productCode=" + productCode
				+ ", accountFeeTypeCode=" + accountFeeTypeCode + ", accountRecordMonth=" + accountRecordMonth
				+ ", accountFee=" + accountFee + ", accountOperator=" + accountOperator + ", checkStatus=" + checkStatus
				+ ", checkPerson=" + checkPerson + ", checkTime=" + checkTime + "]";
	}
	
}
