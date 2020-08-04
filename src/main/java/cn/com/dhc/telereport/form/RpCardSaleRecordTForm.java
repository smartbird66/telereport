package cn.com.dhc.telereport.form;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RpCardSaleRecordTForm {
	private String cityCode;
	private String productCode;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date saleDate;
	
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
	public Date getSaleDate() {
		return saleDate;
	}
	public void setSaleDate(Date saleDate) {
		this.saleDate = saleDate;
	}
	@Override
	public String toString() {
		return "RpCardSaleRecordTForm [cityCode=" + cityCode + ", productCode=" + productCode + ", saleDate=" + saleDate
				+ "]";
	}
	
	
}
