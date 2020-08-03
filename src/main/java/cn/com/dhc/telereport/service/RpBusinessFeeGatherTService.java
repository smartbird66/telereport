package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpBusinessFeeGatherT;
import cn.com.dhc.telereport.form.RpBusinessFeeGatherTForm;
import cn.com.dhc.telereport.mapper.RpBusinessFeeGatherTMapper;

@Service
public class RpBusinessFeeGatherTService {
	@Autowired
	private RpBusinessFeeGatherTMapper rpBusinessFeeGatherTMapper; 
	
	public List<RpBusinessFeeGatherT> selectByInfo(RpBusinessFeeGatherTForm rpBusinessFeeGatherTForm){
		// 处理BusinessFeeDate字符串，将xxxx-xx-xx转化为XXXXxxXX
		String[] strSplit = rpBusinessFeeGatherTForm.getBusinessFeeDate().split("-");
		int i = 0;
		String str1 = "";
		for(;i<strSplit.length;i++) {
			str1 += strSplit[i];
		}
		rpBusinessFeeGatherTForm.setBusinessFeeDate(str1);
		
		RpBusinessFeeGatherT rpBusinessFeeGatherT = new RpBusinessFeeGatherT();
		BeanUtils.copyProperties(rpBusinessFeeGatherTForm, rpBusinessFeeGatherT);
		
		return rpBusinessFeeGatherTMapper.selectByInfo(rpBusinessFeeGatherT);
	}
}
