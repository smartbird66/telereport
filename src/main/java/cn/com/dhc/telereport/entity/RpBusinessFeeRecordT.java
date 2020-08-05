package cn.com.dhc.telereport.entity;

import java.util.Date;

public class RpBusinessFeeRecordT {
    private Integer id;
    private Date businessRecordDate;
    private String cityCode;
    private RpCityCodeT rpCityCodeT;
    private String productCode;
    private RpProductCodeT rpProductCodeT;
    private RpBusinessFeeTypeCodeT rpBusinessFeeTypeCodeT;
    private String businessTypeCode;
    private Double businessFee;
    private Date updateTime;

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
    public Double getBusinessFee() {
        return businessFee;
    }
    public void setBusinessFee(Double businessFee) {
        this.businessFee = businessFee;
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
    public RpBusinessFeeTypeCodeT getRpBusinessFeeTypeCodeT() {
        return rpBusinessFeeTypeCodeT;
    }
    public void setRpBusinessFeeTypeCodeT(RpBusinessFeeTypeCodeT rpBusinessFeeTypeCodeT) {
        this.rpBusinessFeeTypeCodeT = rpBusinessFeeTypeCodeT;
    }

    public Date getBusinessRecordDate() {
        return businessRecordDate;
    }

    public void setBusinessRecordDate(Date businessRecordDate) {
        this.businessRecordDate = businessRecordDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
