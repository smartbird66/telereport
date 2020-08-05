package cn.com.dhc.telereport.entity;

public class RpWriteOffTypeCodeT {
	private String writeOffTypeCode;
	private String writeOffTypeName;
	public String getWriteOffTypeCode() {
		return writeOffTypeCode;
	}
	public void setWriteOffTypeCode(String writeOffTypeCode) {
		this.writeOffTypeCode = writeOffTypeCode;
	}
	public String getWriteOffTypeName() {
		return writeOffTypeName;
	}
	public void setWriteOffTypeName(String writeOffTypeName) {
		this.writeOffTypeName = writeOffTypeName;
	}
	@Override
	public String toString() {
		return "RpWriteOffTypeCodeT [writeOffTypeCode=" + writeOffTypeCode + ", writeOffTypeName=" + writeOffTypeName
				+ "]";
	}
	
}
