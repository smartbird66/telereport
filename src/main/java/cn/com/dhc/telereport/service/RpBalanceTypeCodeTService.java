package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpBalanceTypeCodeT;
import cn.com.dhc.telereport.mapper.RpBalanceTypeCodeTMapper;

@Service
public class RpBalanceTypeCodeTService {

	@Autowired
	private RpBalanceTypeCodeTMapper rpBalanceTypeCodeTMapper;
	
	public  List<RpBalanceTypeCodeT> selectAllRpBalanceTypeCodeT(){
		return rpBalanceTypeCodeTMapper.selectAllRpBalanceTypeCodeT();
	}
}
