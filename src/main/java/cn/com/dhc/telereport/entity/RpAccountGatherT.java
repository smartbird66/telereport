package cn.com.dhc.telereport.entity;

import java.util.Date;

public class RpAccountGatherT {
	private String accountMonth;
	private String cityCode;
	private RpCityCodeT rpCityCodeT;
	private String productCode;
	private RpProductCodeT rpProductCodeT;
	private String accountTypeCode;
	private RpAccountTypeCodeT rpAccountTypeCodeT;
	private Date updateTime;
	private String accounFee;
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
	public String getAccountMonth() {
		return accountMonth;
	}
	public void setAccountMonth(String accountMonth) {
		this.accountMonth = accountMonth;
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
	public String getAccountTypeCode() {
		return accountTypeCode;
	}
	public void setAccountTypeCode(String accountTypeCode) {
		this.accountTypeCode = accountTypeCode;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getAccounFee() {
		return accounFee;
	}
	public void setAccounFee(String accounFee) {
		this.accounFee = accounFee;
	}
	@Override
	public String toString() {
		return "RpAccountGatherT [accountMonth=" + accountMonth + ", cityCode=" + cityCode + ", productCode="
				+ productCode + ", accountTypeCode=" + accountTypeCode + ", updateTime=" + updateTime + ", accounFee="
				+ accounFee + "]";
	}
	
	
	
}
