package cn.com.dhc.telereport.table;

import java.util.Date;

public class RpAccountGatherTTable {
	private String accountMonth;
	private String cityName;
	private String productName;
	private String accountTypeName;
	private Date updateTime;
	private String accounFee;
	public String getAccountMonth() {
		return accountMonth;
	}
	public void setAccountMonth(String accountMonth) {
		this.accountMonth = accountMonth;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getAccountTypeName() {
		return accountTypeName;
	}
	public void setAccountTypeName(String accountTypeName) {
		this.accountTypeName = accountTypeName;
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
		return "RpAccountGatherTTable [accountMonth=" + accountMonth + ", cityName=" + cityName + ", productName="
				+ productName + ", accountTypeName=" + accountTypeName + ", updateTime=" + updateTime + ", accounFee="
				+ accounFee + "]";
	}
	
}
