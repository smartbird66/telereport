package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpNetBalanceRecordT;
import cn.com.dhc.telereport.form.RpNetBalanceRecordTForm;
import cn.com.dhc.telereport.mapper.RpNetBalanceRecordTMapper;

@Service
public class RpNetBalanceRecordTService {
	@Autowired
	private RpNetBalanceRecordTMapper rpNetBalanceRecordTMapper;
	
	public List<RpNetBalanceRecordT> selectByInfo(RpNetBalanceRecordTForm rpNetBalanceRecordTForm){
		RpNetBalanceRecordT rpNetBalanceRecordT = new RpNetBalanceRecordT();
		BeanUtils.copyProperties(rpNetBalanceRecordTForm, rpNetBalanceRecordT);
		
		return rpNetBalanceRecordTMapper.slelectByInfo(rpNetBalanceRecordT);
	}
}
