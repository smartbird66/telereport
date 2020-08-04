package cn.com.dhc.telereport.entity;

public class RpBusinessFeeTypeCodeT {
	private String businessFeeTypeCode;
	private String businessFeeTypeName;
	public String getBusinessFeeTypeCode() {
		return businessFeeTypeCode;
	}
	public void setBusinessFeeTypeCode(String businessFeeTypeCode) {
		this.businessFeeTypeCode = businessFeeTypeCode;
	}
	public String getBusinessFeeTypeName() {
		return businessFeeTypeName;
	}
	public void setBusinessFeeTypeName(String businessFeeTypeName) {
		this.businessFeeTypeName = businessFeeTypeName;
	}
	@Override
	public String toString() {
		return "RpBusinessfeeTypeCodeT [businessFeeTypeCode=" + businessFeeTypeCode + ", businessFeeTypeName="
				+ businessFeeTypeName + "]";
	}
}
