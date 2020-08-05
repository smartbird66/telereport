package cn.com.dhc.telereport.form;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RpCardSaleRecordTForm {
	private String cityCode;
	private String productCode;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date saleDate;
	private Integer cardSaleAmount;
	private Integer cardParValue;
	private String totalFee;
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

    public Integer getCardParValue() {
        return cardParValue;
    }

    public void setCardParValue(Integer cardParValue) {
        this.cardParValue = cardParValue;
    }

    public String getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(String totalFee) {
        this.totalFee = totalFee;
    }

    public Integer getCardSaleAmount() {
        return cardSaleAmount;
    }

    public void setCardSaleAmount(Integer cardSaleAmount) {
        this.cardSaleAmount = cardSaleAmount;
    }
}
