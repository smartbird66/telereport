package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpCardSaleRecordT;

import java.util.List;

public interface RpCardSaleRecordTMapper {
    public List<RpCardSaleRecordT> selectByInfo(RpCardSaleRecordT rpCardSaleRecordT);
    //录入
    public void input(RpCardSaleRecordT rpCardSaleRecordT);
    //删除
    public void delete(Integer id);
}
