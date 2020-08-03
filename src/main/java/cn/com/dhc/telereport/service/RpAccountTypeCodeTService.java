package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpAccountTypeCodeT;
import cn.com.dhc.telereport.mapper.RpAccountTypeCodeTMapper;

@Service
public class RpAccountTypeCodeTService {
	@Autowired
	private RpAccountTypeCodeTMapper rpAccountTypeCodeTMapper;
	
	public List<RpAccountTypeCodeT> selectAllRpAccountTypeCodeT(){
		return rpAccountTypeCodeTMapper.selectAllRpAccountTypeCodeT();
	}
}
