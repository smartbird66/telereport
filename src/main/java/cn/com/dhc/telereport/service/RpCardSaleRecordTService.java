package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpCardSaleRecordT;
import cn.com.dhc.telereport.form.RpCardSaleRecordTForm;
import cn.com.dhc.telereport.mapper.RpCardSaleRecordTMapper;

@Service
public class RpCardSaleRecordTService {
	
	@Autowired
	private RpCardSaleRecordTMapper rpCardSaleRecordTMapper;
	
	public List<RpCardSaleRecordT> selectByInfo(RpCardSaleRecordTForm rpCardSaleRecordTForm){
		RpCardSaleRecordT rpCardSaleRecordT = new RpCardSaleRecordT();
		BeanUtils.copyProperties(rpCardSaleRecordTForm, rpCardSaleRecordT);
		
		return rpCardSaleRecordTMapper.selectByInfo(rpCardSaleRecordT);
	}
}
