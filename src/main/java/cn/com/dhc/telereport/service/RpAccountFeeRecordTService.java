package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;
import cn.com.dhc.telereport.form.RpAccountFeeRecordTForm;
import cn.com.dhc.telereport.mapper.RpAccountFeeRecordTMapper;

@Service
public class RpAccountFeeRecordTService {
	@Autowired
	private RpAccountFeeRecordTMapper rpAccountFeeRecordTMapper;
	
	public List<RpAccountFeeRecordT> selectByInfo(RpAccountFeeRecordTForm rpAccountFeeRecordTForm){
		RpAccountFeeRecordT rpAccountFeeRecordT = new RpAccountFeeRecordT();
		//复制时要求源和目标中的数据域名、类型保持一致。Form赋值给实体类
		BeanUtils.copyProperties(rpAccountFeeRecordTForm, rpAccountFeeRecordT);
		return rpAccountFeeRecordTMapper.selectByInfo(rpAccountFeeRecordT);
	}
}
