package cn.com.dhc.telereport.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.dhc.telereport.entity.RpPreFeeGatherT;
import cn.com.dhc.telereport.form.RpPreFeeGatherTForm;
import cn.com.dhc.telereport.mapper.RpPreFeeGatherTMapper;

@Service  // 预转存查询服务
public class RpPreFeeGatherTService {
	@Autowired
	private RpPreFeeGatherTMapper rpPreFeeGatherTMapper;
	
	public List<RpPreFeeGatherT> selectByInfo(RpPreFeeGatherTForm rpPreFeeGatherTForm){
		// 处理accountMonth字符串，将xxxx-xx转化为XXXXxx
		String[] strSplit = rpPreFeeGatherTForm.getAccountMonth().split("-");
		int i = 0;
		String str1 = "";
		for(;i<strSplit.length;i++) {
			str1 += strSplit[i];
		}
		rpPreFeeGatherTForm.setAccountMonth(str1);
		
		RpPreFeeGatherT rpPreFeeGatherT = new RpPreFeeGatherT();
		BeanUtils.copyProperties(rpPreFeeGatherTForm, rpPreFeeGatherT);
		
		return rpPreFeeGatherTMapper.selectByInfo(rpPreFeeGatherT);
	}
}
