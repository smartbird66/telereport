package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;
import org.apache.ibatis.annotations.Param;

public interface RpAccountFeeRecordCheckMapper {
    public void updateStatus(@Param("Aid") String Aid,@Param("Cid") String Cid);
}
