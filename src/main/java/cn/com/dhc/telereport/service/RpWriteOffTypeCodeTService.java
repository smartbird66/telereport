package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpWriteOffTypeCodeT;
import cn.com.dhc.telereport.mapper.RpWriteOffTypeCodeTMapper;

@Service
public class RpWriteOffTypeCodeTService {
	@Autowired
	private RpWriteOffTypeCodeTMapper rpWriteOffTypeCodeTMapper;
	
	public List<RpWriteOffTypeCodeT> selectAllRpWriteOffTypeCodeT(){
		return rpWriteOffTypeCodeTMapper.selectAllRpWriteOffTypeCodeT();
	}
}
