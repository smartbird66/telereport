package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpPreFeeRecordT;

import java.util.List;

public interface RpPreFeeRecordTMapper {
    public List<RpPreFeeRecordT> selectByInfo(RpPreFeeRecordT rpPreFeeRecordT);
    //录入
    public void input(RpPreFeeRecordT rpPreFeeRecordT);
    //删除
    public void delete(Integer id);
}
