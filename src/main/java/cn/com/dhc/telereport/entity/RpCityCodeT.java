package cn.com.dhc.telereport.entity;

public class RpCityCodeT {
	private String cityCode;
	private String cityName;
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	@Override
	public String toString() {
		return "rpCityCodeT [cityCode=" + cityCode + ", cityName=" + cityName + "]";
	}
	
}
