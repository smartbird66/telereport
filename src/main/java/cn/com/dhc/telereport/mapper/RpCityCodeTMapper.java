package cn.com.dhc.telereport.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.com.dhc.telereport.entity.RpCityCodeT;

public interface RpCityCodeTMapper {

	/**
	 * 查询所有城市
	 * @return
	 */

	public List<RpCityCodeT> selectAll();
}
