package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpNetBalanceRecordT;

import java.util.List;
//网间结算
public interface RpNetBalanceRecordTMapper {
    public List<RpNetBalanceRecordT> selectByInfo(RpNetBalanceRecordT rpNetBalanceRecordT);
    //录入
    public void input(RpNetBalanceRecordT rpNetBalanceRecordT);
    //删除
    public void delete(Integer id);
}
