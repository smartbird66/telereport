package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpProductCodeT;
import cn.com.dhc.telereport.mapper.RpProductCodeTMapper;

@Service
public class RpProductCodeTService {
	@Autowired
	private RpProductCodeTMapper rpProductCodeTMapper;
	
	public List<RpProductCodeT> selectAllProduct(){
		//return null;
		return rpProductCodeTMapper.selectAllProduct();
	}

}
