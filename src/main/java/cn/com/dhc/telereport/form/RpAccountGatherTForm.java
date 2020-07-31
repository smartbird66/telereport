package cn.com.dhc.telereport.form;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RpAccountGatherTForm {
	private String accountMonth;
	private String cityCode;
	private String productCode;
	private String accountTypeCode;
	@DateTimeFormat(pattern="yyyy-MM-dd")
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
	public String getAccountTypeCode() {
		return accountTypeCode;
	}
	@Override
	public String toString() {
		return "rpAccountGatherTForm [accountMonth=" + accountMonth + ", cityCode=" + cityCode + ", productCode="
				+ productCode + ", accountTypeCode=" + accountTypeCode + ", updateTime=" + updateTime + "]";
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
	
}
