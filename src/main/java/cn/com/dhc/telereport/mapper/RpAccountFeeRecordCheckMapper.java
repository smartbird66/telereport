package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;
import org.apache.ibatis.annotations.Param;

//用于修改指定id的记录的稽核状态
public interface RpAccountFeeRecordCheckMapper {
    public void updateStatus(@Param("Aid") String Aid,@Param("Cid") String Cid);
}
