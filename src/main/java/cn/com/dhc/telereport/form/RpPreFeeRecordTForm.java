package cn.com.dhc.telereport.form;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class RpPreFeeRecordTForm {
    private String cityCode;
    private String productCode;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date recordDate;
    private String writeOffTypeCode;

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

    public Date getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(Date recordDate) {
        this.recordDate = recordDate;
    }


    public String getWriteOffTypeCode() {
        return writeOffTypeCode;
    }

    public void setWriteOffTypeCode(String writeOffTypeCode) {
        this.writeOffTypeCode = writeOffTypeCode;
    }
}
