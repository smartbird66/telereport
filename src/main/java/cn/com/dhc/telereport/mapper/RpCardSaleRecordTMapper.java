package cn.com.dhc.telereport.mapper;

import java.util.List;

import cn.com.dhc.telereport.entity.RpCardSaleRecordT;

public interface RpCardSaleRecordTMapper {

	public List<RpCardSaleRecordT> selectByInfo(RpCardSaleRecordT rpCardSaleRecordT);
}
