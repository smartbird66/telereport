package cn.com.dhc.telereport.form;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class RpBusinessFeeRecordTForm {
    private String cityCode;
    private String productCode;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date businessRecordDate;
    private String businessTypeCode;

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

    public Date getBusinessRecordDate() {
        return businessRecordDate;
    }

    public void setBusinessRecordDate(Date businessRecordDate) {
        this.businessRecordDate = businessRecordDate;
    }

    public String getBusinessTypeCode() {
        return businessTypeCode;
    }

    public void setBusinessTypeCode(String businessTypeCode) {
        this.businessTypeCode = businessTypeCode;
    }
}
