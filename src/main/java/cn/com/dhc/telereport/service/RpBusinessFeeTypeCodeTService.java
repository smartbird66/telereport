package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpBusinessFeeTypeCodeT;
import cn.com.dhc.telereport.mapper.RpBusinessFeeTypeCodeTMapper;

@Service
public class RpBusinessFeeTypeCodeTService {
	@Autowired
	private RpBusinessFeeTypeCodeTMapper rpBusinessFeeTypeCodeTMapper;
	
	public List<RpBusinessFeeTypeCodeT> selectAll(){
		return rpBusinessFeeTypeCodeTMapper.selectAll();
	}
}
