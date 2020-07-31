package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpCityCodeT;
import cn.com.dhc.telereport.mapper.RpCityCodeTMapper;

@Service
public class RpCityCodeTService {
		@Autowired
		private RpCityCodeTMapper rpCityCodeTMapper;
		
		public List<RpCityCodeT> selectAllCity() {
			return rpCityCodeTMapper.selectAll();
			//return null;
		}
}
