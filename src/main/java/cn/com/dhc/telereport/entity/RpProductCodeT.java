package cn.com.dhc.telereport.entity;

public class RpProductCodeT {
	private String productCode;
	private String productName;
	private String useFlag;
	private String useAccount;
	private String useCardSale;
	private String useBalance;
	private String usePreFee;
	private String useBusinessFee;
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getUseFlag() {
		return useFlag;
	}
	public void setUseFlag(String useFlag) {
		this.useFlag = useFlag;
	}
	public String getUseAccount() {
		return useAccount;
	}
	public void setUseAccount(String useAccount) {
		this.useAccount = useAccount;
	}
	public String getUseCardSale() {
		return useCardSale;
	}
	public void setUseCardSale(String useCardSale) {
		this.useCardSale = useCardSale;
	}
	public String getUseBalance() {
		return useBalance;
	}
	public void setUseBalance(String useBalance) {
		this.useBalance = useBalance;
	}
	public String getUsePreFee() {
		return usePreFee;
	}
	public void setUsePreFee(String usePreFee) {
		this.usePreFee = usePreFee;
	}
	public String getUseBusinessFee() {
		return useBusinessFee;
	}
	public void setUseBusinessFee(String useBusinessFee) {
		this.useBusinessFee = useBusinessFee;
	}
	@Override
	public String toString() {
		return "RpproductCodeT [productCode=" + productCode + ", productName=" + productName + ", useFlag=" + useFlag
				+ ", useAccount=" + useAccount + ", useCardSale=" + useCardSale + ", useBalance=" + useBalance
				+ ", usePreFee=" + usePreFee + ", useBusinessFee=" + useBusinessFee + "]";
	}
	

}
