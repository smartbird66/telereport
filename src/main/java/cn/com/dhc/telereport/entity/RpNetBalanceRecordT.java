package cn.com.dhc.telereport.entity;

import java.util.Date;

public class RpNetBalanceRecordT {
	private String id;
	private Date balanceMonth;
	private String cityCode;
	private RpCityCodeT rpCityCodeT;
	private String productCode;
	private RpProductCodeT rpProductCodeT;
	private String balanceSpCode;
	private RpBalanceSpCodeT rpBalanceSpCodeT;
	private String balanceTypeCode;
	private RpBalanceTypeCodeT rpBalanceTypeCodeT;
	private String recordOperator;
	private String balanceFee;
	private String checkStatus;
	private String checkPerson;
	private Date checkTime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getRecordOperator() {
		return recordOperator;
	}
	public void setRecordOperator(String recordOperator) {
		this.recordOperator = recordOperator;
	}
	public String getBalanceFee() {
		return balanceFee;
	}
	public void setBalanceFee(String balanceFee) {
		this.balanceFee = balanceFee;
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
	public RpBalanceSpCodeT getRpBalanceSpCodeT() {
		return rpBalanceSpCodeT;
	}
	public void setRpBalanceSpCodeT(RpBalanceSpCodeT rpBalanceSpCodeT) {
		this.rpBalanceSpCodeT = rpBalanceSpCodeT;
	}
	public RpBalanceTypeCodeT getRpBalanceTypeCodeT() {
		return rpBalanceTypeCodeT;
	}
	public void setRpBalanceTypeCodeT(RpBalanceTypeCodeT rpBalanceTypeCodeT) {
		this.rpBalanceTypeCodeT = rpBalanceTypeCodeT;
	}
	
	
}
