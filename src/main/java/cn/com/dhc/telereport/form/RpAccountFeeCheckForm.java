package cn.com.dhc.telereport.form;

public class RpAccountFeeCheckForm {
    private String cityCode;
    private String productCode;
    private String accountFeeTypeCode;
    private String checkStatus;

    @Override
    public String toString() {
        return "RpAccountFeeCheckForm{" +
                "cityCode='" + cityCode + '\'' +
                ", productCode='" + productCode + '\'' +
                ", accountFeeTypeCode='" + accountFeeTypeCode + '\'' +
                ", checkStatus='" + checkStatus + '\'' +
                '}';
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

    public String getAccountFeeTypeCode() {
        return accountFeeTypeCode;
    }

    public void setAccountFeeTypeCode(String accountFeeTypeCode) {
        this.accountFeeTypeCode = accountFeeTypeCode;
    }

    public String getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(String checkStatus) {
        this.checkStatus = checkStatus;
    }
}
