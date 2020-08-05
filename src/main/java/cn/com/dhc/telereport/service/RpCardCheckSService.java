package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;
import cn.com.dhc.telereport.entity.RpCardSaleRecordT;
import cn.com.dhc.telereport.form.RpAccountFeeCheckForm;
import cn.com.dhc.telereport.form.RpCardCheckForm;
import cn.com.dhc.telereport.mapper.RpAccountFeeRecordCheckSMapper;
import cn.com.dhc.telereport.mapper.RpCardCheckSMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RpCardCheckSService {
    @Autowired
    private RpCardCheckSMapper rpCardCheckSMapper;

    public List<RpCardSaleRecordT> selectByInfo(RpCardCheckForm rpAccountFeeRecordTForm){
        RpCardSaleRecordT rpAccountFeeRecordT = new RpCardSaleRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。Form赋值给实体类
        BeanUtils.copyProperties(rpAccountFeeRecordTForm, rpAccountFeeRecordT);
        return rpCardCheckSMapper.selectByInfo(rpAccountFeeRecordT);
    }
}
