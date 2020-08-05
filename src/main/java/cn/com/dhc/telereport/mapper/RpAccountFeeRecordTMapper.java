package cn.com.dhc.telereport.mapper;


import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;

import java.util.List;

public interface RpAccountFeeRecordTMapper {
	//持久化层中不允许使用展现层和业务逻辑层中的类。
    //查询
	public List<RpAccountFeeRecordT> selectByInfo(RpAccountFeeRecordT rpAccountFeeRecordT);
	//录入
    public void input(RpAccountFeeRecordT rpAccountFeeRecordT);
    //删除
    public void delete(Integer id);
}
