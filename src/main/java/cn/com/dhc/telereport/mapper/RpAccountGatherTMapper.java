package cn.com.dhc.telereport.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import cn.com.dhc.telereport.entity.RpAccountGatherT;

public interface RpAccountGatherTMapper {
	
	public List<RpAccountGatherT> selectByInfo(RpAccountGatherT rpAccountGatherT);
	// 数据分页
	public List<RpAccountGatherT> selectByInfo(RpAccountGatherT rpAccountGatherT,RowBounds rowBounds);

}
