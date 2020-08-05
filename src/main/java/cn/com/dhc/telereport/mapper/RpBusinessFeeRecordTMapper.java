package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpBusinessFeeRecordT;

import java.util.List;
//通知单录入
public interface RpBusinessFeeRecordTMapper {
    public List<RpBusinessFeeRecordT> selectByInfo(RpBusinessFeeRecordT rpBusinessFeeRecordT);
    //录入
    public void input(RpBusinessFeeRecordT rpBusinessFeeRecordT);
    //删除
    public void delete(Integer id);
}
