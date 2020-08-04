package cn.com.dhc.telereport.mapper;

import java.util.List;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;

public interface RpAccountFeeRecordTMapper {
	// 持久化层不允许使用展现层和业务逻辑层
	public List<RpAccountFeeRecordT> selectByInfo(RpAccountFeeRecordT rpAccountFeeRecordT);
}
