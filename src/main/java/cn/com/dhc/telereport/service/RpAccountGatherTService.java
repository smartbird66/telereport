package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpAccountGatherT;
import cn.com.dhc.telereport.form.RpAccountGatherTForm;
import cn.com.dhc.telereport.mapper.RpAccountGatherTMapper;

@Service
public class RpAccountGatherTService {
	@Autowired
	private RpAccountGatherTMapper rpAccountGatherTMapper;
	
	public List<RpAccountGatherT> selectByInfo(RpAccountGatherTForm rpAccountGatherTForm){
		// 处理accountMonth字符串，将xxxx-xx转化为XXXXxx
		String[] strSplit = rpAccountGatherTForm.getAccountMonth().split("-");
		int i = 0;
		String str1 = "";
		for(;i<strSplit.length;i++) {
			str1 += strSplit[i];
		}
		rpAccountGatherTForm.setAccountMonth(str1);
		
		RpAccountGatherT rpAccountGatherT = new RpAccountGatherT();
		BeanUtils.copyProperties(rpAccountGatherTForm, rpAccountGatherT);
		
		
		return rpAccountGatherTMapper.selectByInfo(rpAccountGatherT);
	}
	
}
