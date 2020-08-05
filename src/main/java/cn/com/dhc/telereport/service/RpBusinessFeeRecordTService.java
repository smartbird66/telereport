package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpBusinessFeeRecordT;
import cn.com.dhc.telereport.form.RpBusinessFeeRecordTForm;
import cn.com.dhc.telereport.mapper.RpBusinessFeeRecordTMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpBusinessFeeRecordTService {
    @Autowired
    private RpBusinessFeeRecordTMapper rpBusinessFeeRecordTMapper;
    /**
     * 根据条件查询出满足条件的通知单收入信息。
     * @return	查询结果
     */
    public List<RpBusinessFeeRecordT> selectByInfo(RpBusinessFeeRecordTForm rpBusinessFeeRecordTForm) {
        RpBusinessFeeRecordT rpBusinessFeeRecordT=new RpBusinessFeeRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。
        BeanUtils.copyProperties(rpBusinessFeeRecordTForm, rpBusinessFeeRecordT);
        return rpBusinessFeeRecordTMapper.selectByInfo(rpBusinessFeeRecordT);
    }
    public void input(RpBusinessFeeRecordTForm c) {
        RpBusinessFeeRecordT rpBusinessFeeRecordT = new RpBusinessFeeRecordT();
        BeanUtils.copyProperties(c, rpBusinessFeeRecordT);
    }
    public void delete(Integer id){
        rpBusinessFeeRecordTMapper.delete(id);
    }
}
