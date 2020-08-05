package cn.com.dhc.telereport.form;

//卡销售收入稽核模块查询表
public class RpCardCheckForm {
    private String cityCode;
    private String productCode;
    private String checkStatus;
    private String totalFee;
    private String cardSaleAmount;

    @Override
    public String toString() {
        return "RpCardCheckForm{" +
                "cityCode='" + cityCode + '\'' +
                ", productCode='" + productCode + '\'' +
                ", checkStatus='" + checkStatus + '\'' +
                ", totalFee='" + totalFee + '\'' +
                ", cardSaleAmount='" + cardSaleAmount + '\'' +
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

    public String getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(String checkStatus) {
        this.checkStatus = checkStatus;
    }

    public String getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(String totalFee) {
        this.totalFee = totalFee;
    }

    public String getCardSaleAmount() {
        return cardSaleAmount;
    }

    public void setCardSaleAmount(String cardSaleAmount) {
        this.cardSaleAmount = cardSaleAmount;
    }
}
