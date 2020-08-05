package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;

import java.util.List;

//用于查找指定条件的记录
public interface RpAccountFeeRecordCheckSMapper {
    public List<RpAccountFeeRecordT> selectByInfo(RpAccountFeeRecordT rpAccountFeeRecordT);
}
