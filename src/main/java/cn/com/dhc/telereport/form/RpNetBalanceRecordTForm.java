package cn.com.dhc.telereport.form;

import cn.com.dhc.telereport.entity.RpBalanceSpCodeT;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class RpNetBalanceRecordTForm {
    private String id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date balanceMonth;
    private String cityCode;
    //private RpCityCodeT rpCityCodeT;
    private String productCode;
    //private RpProductCodeT rpProductCodeT;
    private String balanceSpCode;
    private RpBalanceSpCodeT rpBalanceSpCodeT;
    private String balanceTypeCode;
    //private RpBalanceTypeCodeT rpBalanceTypeCodeT;
    private String recordOperator;
    private String balanceFee;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getBalanceMonth() {
        return balanceMonth;
    }

    public void setBalanceMonth(Date balanceMonth) {
        this.balanceMonth = balanceMonth;
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

    public String getBalanceSpCode() {
        return balanceSpCode;
    }

    public void setBalanceSpCode(String balanceSpCode) {
        this.balanceSpCode = balanceSpCode;
    }

    public String getBalanceTypeCode() {
        return balanceTypeCode;
    }

    public void setBalanceTypeCode(String balanceTypeCode) {
        this.balanceTypeCode = balanceTypeCode;
    }

    public String getRecordOperator() {
        return recordOperator;
    }

    public void setRecordOperator(String recordOperator) {
        this.recordOperator = recordOperator;
    }

    public String getBalanceFee() {
        return balanceFee;
    }

    public void setBalanceFee(String balanceFee) {
        this.balanceFee = balanceFee;
    }
    //private String checkStatus;
    //private String checkPerson;
    //private Date checkTime;
}
