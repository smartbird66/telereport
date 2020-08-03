package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpBalanceSpCodeT;
import cn.com.dhc.telereport.mapper.RpBalanceSpCodeTMapper;

@Service
public class RpBalanceSpCodeTService {
	@Autowired
	private RpBalanceSpCodeTMapper rpBalanceSpCodeTMapper;
	
	public List<RpBalanceSpCodeT> selectAll(){
		return rpBalanceSpCodeTMapper.selectAll();
	}
}
