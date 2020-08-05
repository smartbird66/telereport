package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpCardSaleRecordT;

import java.util.List;

public interface RpCardCheckSMapper {
    public List<RpCardSaleRecordT> selectByInfo(RpCardSaleRecordT rpCardSaleRecordT);
}
