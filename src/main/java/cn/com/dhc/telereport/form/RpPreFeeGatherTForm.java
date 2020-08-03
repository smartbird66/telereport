package cn.com.dhc.telereport.form;

public class RpPreFeeGatherTForm {
	private String accountMonth;
	private String cityCode;
	private String productCode;
	private String writeOffTypeCode;
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
	@Override
	public String toString() {
		return "RpPreFeeGatherTForm [accountMonth=" + accountMonth + ", cityCode=" + cityCode + ", productCode="
				+ productCode + ", writeOffTypeCode=" + writeOffTypeCode + "]";
	}

}
