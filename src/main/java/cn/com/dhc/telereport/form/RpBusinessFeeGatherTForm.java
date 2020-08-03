package cn.com.dhc.telereport.form;

public class RpBusinessFeeGatherTForm {
	private String businessFeeDate;
	private String cityCode;
	private String productCode;
	private String businessTypeCode;
	public String getBusinessFeeDate() {
		return businessFeeDate;
	}
	public void setBusinessFeeDate(String businessFeeDate) {
		this.businessFeeDate = businessFeeDate;
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
	public String getBusinessTypeCode() {
		return businessTypeCode;
	}
	public void setBusinessTypeCode(String businessTypeCode) {
		this.businessTypeCode = businessTypeCode;
	}
	@Override
	public String toString() {
		return "RpBusinessFeeGatherTForm [businessFeeDate=" + businessFeeDate + ", cityCode=" + cityCode
				+ ", productCode=" + productCode + ", businessTypeCode=" + businessTypeCode + "]";
	}
	
}
