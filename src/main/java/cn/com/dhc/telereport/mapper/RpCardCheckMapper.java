package cn.com.dhc.telereport.mapper;

import org.apache.ibatis.annotations.Param;

public interface RpCardCheckMapper {
    public void updateStatus(@Param("Aid") String Aid, @Param("Cid") String Cid);
}
