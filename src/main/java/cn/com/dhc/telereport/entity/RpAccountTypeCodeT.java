package cn.com.dhc.telereport.entity;
// 出账收入类型编码
public class RpAccountTypeCodeT {
	private String accountTypeCode;
	private String accountTypeName;
	public String getAccountTypeCode() {
		return accountTypeCode;
	}
	public void setAccountTypeCode(String accountTypeCode) {
		this.accountTypeCode = accountTypeCode;
	}
	public String getAccountTypeName() {
		return accountTypeName;
	}
	public void setAccountTypeName(String accountTypeName) {
		this.accountTypeName = accountTypeName;
	}
	@Override
	public String toString() {
		return "RpAccountTypeCodeT [accountTypeCode=" + accountTypeCode + ", accountTypeName=" + accountTypeName + "]";
	}
	
}
