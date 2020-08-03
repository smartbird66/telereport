package cn.com.dhc.telereport.entity;

public class RpBalanceTypeCodeT {
	private String balanceTypeCode;
	private String balanceTypeName;
	public String getBalanceTypeCode() {
		return balanceTypeCode;
	}
	public void setBalanceTypeCode(String balanceTypeCode) {
		this.balanceTypeCode = balanceTypeCode;
	}
	public String getBalanceTypeName() {
		return balanceTypeName;
	}
	public void setBalanceTypeName(String balanceTypeName) {
		this.balanceTypeName = balanceTypeName;
	}
	@Override
	public String toString() {
		return "RpBalanceTypeCodeT [balanceTypeCode=" + balanceTypeCode + ", balanceTypeName=" + balanceTypeName + "]";
	}
	
}
