package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;
import cn.com.dhc.telereport.form.RpAccountFeeCheckForm;
import cn.com.dhc.telereport.form.RpAccountFeeRecordTForm;
import cn.com.dhc.telereport.mapper.RpAccountFeeRecordCheckMapper;
import cn.com.dhc.telereport.mapper.RpAccountFeeRecordCheckSMapper;
import cn.com.dhc.telereport.mapper.RpAccountFeeRecordTMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpAccountFeeRecordCheckSService {
    @Autowired
    private RpAccountFeeRecordCheckSMapper rpAccountFeeRecordTMapper;

    public List<RpAccountFeeRecordT> selectByInfo(RpAccountFeeCheckForm rpAccountFeeRecordTForm){
        RpAccountFeeRecordT rpAccountFeeRecordT = new RpAccountFeeRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。Form赋值给实体类
        BeanUtils.copyProperties(rpAccountFeeRecordTForm, rpAccountFeeRecordT);
        return rpAccountFeeRecordTMapper.selectByInfo(rpAccountFeeRecordT);
    }
}
