package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpCardSaleRecordT;
import cn.com.dhc.telereport.form.RpCardSaleRecordTForm;
import cn.com.dhc.telereport.mapper.RpCardSaleRecordTMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpCardSaleRecordTService {
    @Autowired
    private RpCardSaleRecordTMapper rpCardSaleRecordTMapper;
    /**
     * 根据条件查询出满足条件的出账收入信息。
     * @return	查询结果
     */
    public List<RpCardSaleRecordT> selectByInfo(RpCardSaleRecordTForm rpCardSaleRecordTForm) {
        RpCardSaleRecordT rpCardSaleRecordT=new RpCardSaleRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。
        BeanUtils.copyProperties(rpCardSaleRecordTForm, rpCardSaleRecordT);
        return rpCardSaleRecordTMapper.selectByInfo(rpCardSaleRecordT);
    }
    public void input(RpCardSaleRecordTForm c) {
        RpCardSaleRecordT rpCardSaleRecordT = new RpCardSaleRecordT();
        //复制时要求源和目标中的数据域名、类型保持一致。
        //System.out.println("account_record_month============================="+c);
        BeanUtils.copyProperties(c, rpCardSaleRecordT);
        //System.out.println("===================="+rpAccountFeeRecordT);
    }
    public void delete(Integer id){
        rpCardSaleRecordTMapper.delete(id);
    }
}
