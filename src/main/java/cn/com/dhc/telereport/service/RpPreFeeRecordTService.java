package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpPreFeeRecordT;
import cn.com.dhc.telereport.form.RpPreFeeRecordTForm;
import cn.com.dhc.telereport.mapper.RpPreFeeRecordTMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpPreFeeRecordTService {
    @Autowired
    private RpPreFeeRecordTMapper rpPreFeeRecordTMapper;
    /**
     * 根据条件查询出满足条件的预存转收入信息。
     * @return	查询结果
     */
    public List<RpPreFeeRecordT> selectByInfo(RpPreFeeRecordTForm rpPreFeeRecordTForm) {
        RpPreFeeRecordT rpPreFeeRecordT=new RpPreFeeRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。
        BeanUtils.copyProperties(rpPreFeeRecordTForm, rpPreFeeRecordT);
        return rpPreFeeRecordTMapper.selectByInfo(rpPreFeeRecordT);
    }
    public void input(RpPreFeeRecordTForm c) {
        RpPreFeeRecordT rpPreFeeRecordT = new RpPreFeeRecordT();
        BeanUtils.copyProperties(c, rpPreFeeRecordT);
    }
    public void delete(Integer id){
        rpPreFeeRecordTMapper.delete(id);
    }
}
