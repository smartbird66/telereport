package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpNetBalanceRecordT;
import cn.com.dhc.telereport.form.RpNetBalanceRecordTForm;
import cn.com.dhc.telereport.mapper.RpNetBalanceRecordTMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpNetBalanceRecordTService {
    @Autowired
    private RpNetBalanceRecordTMapper rpNetBalanceRecordTMapper;
    /**
     * 根据条件查询出满足条件的网间结算收入信息。
     * @return	查询结果
     */
    public List<RpNetBalanceRecordT> selectByInfo(RpNetBalanceRecordTForm  rpNetBalanceRecordTForm) {
        RpNetBalanceRecordT rpNetBalanceRecordT=new RpNetBalanceRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。
        BeanUtils.copyProperties(rpNetBalanceRecordTForm, rpNetBalanceRecordT);
        return rpNetBalanceRecordTMapper.selectByInfo(rpNetBalanceRecordT);
    }
    public void input(RpNetBalanceRecordTForm c) {
        RpNetBalanceRecordT rpNetBalanceRecordT = new RpNetBalanceRecordT();
        BeanUtils.copyProperties(c, rpNetBalanceRecordT);

    }
    public void delete(Integer id){
        rpNetBalanceRecordTMapper.delete(id);
    }
}
