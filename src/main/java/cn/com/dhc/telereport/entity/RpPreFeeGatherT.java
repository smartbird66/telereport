package cn.com.dhc.telereport.entity;

import java.util.Date;

public class RpPreFeeGatherT {

	private String accountMonth;
	private String cityCode;
	private RpCityCodeT rpCityCodeT;
	private String productCode;
	private RpProductCodeT rpProductCodeT;
	private String writeOffTypeCode;
	private RpWriteOffTypeCodeT rpWriteOffTypeCodeT;
	private Double writeOffFee;
	private Date updateTime;
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
	public String getWriteOffTypeCode() {
		return writeOffTypeCode;
	}
	public void setWriteOffTypeCode(String writeOffTypeCode) {
		this.writeOffTypeCode = writeOffTypeCode;
	}
	public Double getWriteOffFee() {
		return writeOffFee;
	}
	public void setWriteOffFee(Double writeOffFee) {
		this.writeOffFee = writeOffFee;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
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
	public RpWriteOffTypeCodeT getRpWriteOffTypeCodeT() {
		return rpWriteOffTypeCodeT;
	}
	public void setRpWriteOffTypeCodeT(RpWriteOffTypeCodeT rpWriteOffTypeCodeT) {
		this.rpWriteOffTypeCodeT = rpWriteOffTypeCodeT;
	}
	
	
}
