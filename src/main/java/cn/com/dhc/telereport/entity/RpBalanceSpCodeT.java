package cn.com.dhc.telereport.entity;

public class RpBalanceSpCodeT {
	private String balanceSpCode;
	private String balanceSpName;
	public String getBalanceSpCode() {
		return balanceSpCode;
	}
	public void setBalanceSpCode(String balanceSpCode) {
		this.balanceSpCode = balanceSpCode;
	}
	public String getBalanceSpName() {
		return balanceSpName;
	}
	public void setBalanceSpName(String balanceSpName) {
		this.balanceSpName = balanceSpName;
	}
	@Override
	public String toString() {
		return "RpBalanceSpCodeT [balanceSpCode=" + balanceSpCode + ", balanceSpName=" + balanceSpName + "]";
	}
	
}
