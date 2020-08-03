package cn.com.dhc.telereport.entity;

import java.util.Date;

public class RpAccountFeeRecordT {
	private String id;
	private String cityCode;
	private RpCityCodeT rpCityCodeT;
	private String productCode;
	private RpProductCodeT rpProductCodeT;
	private String accountFeeTypeCode;
	private RpAccountTypeCodeT rpAccountTypeCodeT;
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
	public RpCityCodeT getRpCityCodeT() {
		return rpCityCodeT;
	}
	public void setRpCityCodeT(RpCityCodeT rpCityCodeT) {
		this.rpCityCodeT = rpCityCodeT;
	}
	public RpProductCodeT getRpProductCodeT() {
		return rpProductCodeT;
	}
	public void setRpProductCodeT(RpProductCodeT rpProductCodeT) {
		this.rpProductCodeT = rpProductCodeT;
	}
	public RpAccountTypeCodeT getRpAccountTypeCodeT() {
		return rpAccountTypeCodeT;
	}
	public void setRpAccountTypeCodeT(RpAccountTypeCodeT rpAccountTypeCodeT) {
		this.rpAccountTypeCodeT = rpAccountTypeCodeT;
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

	
}
