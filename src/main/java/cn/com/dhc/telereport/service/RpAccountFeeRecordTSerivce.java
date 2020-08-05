package cn.com.dhc.telereport.service;


import cn.com.dhc.telereport.form.RpAccountFeeRecordTForm;
import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;
import cn.com.dhc.telereport.mapper.RpAccountFeeRecordTMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpAccountFeeRecordTSerivce {
    @Autowired
	private RpAccountFeeRecordTMapper rpAccountFeeRecordTMapper;
	/**
	 * 根据条件查询出满足条件的出账收入信息。
	 * @param rpAccountFeeRecordTForm	保存的是查询条件
	 * @return	查询结果
	 */
	public List<RpAccountFeeRecordT> selectByInfo(RpAccountFeeRecordTForm rpAccountFeeRecordTForm) {
		RpAccountFeeRecordT rpAccountFeeRecordT = new RpAccountFeeRecordT();
		//复制时要求源和目标中的数据域名、类型保持一致。
		BeanUtils.copyProperties(rpAccountFeeRecordTForm, rpAccountFeeRecordT);
		return rpAccountFeeRecordTMapper.selectByInfo(rpAccountFeeRecordT);
	}
    public void input(RpAccountFeeRecordTForm c) {
        RpAccountFeeRecordT rpAccountFeeRecordT = new RpAccountFeeRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。
        System.out.println("account_record_month============================="+c);
        BeanUtils.copyProperties(c, rpAccountFeeRecordT);
        System.out.println("===================="+rpAccountFeeRecordT);
    }
    public void delete(Integer id){
        rpAccountFeeRecordTMapper.delete(id);
    }
}
