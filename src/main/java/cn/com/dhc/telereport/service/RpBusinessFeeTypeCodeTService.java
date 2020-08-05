package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.mapper.RpBusinessFeeTypeCodeTMapper;
import cn.com.dhc.telereport.entity.RpBusinessFeeTypeCodeT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpBusinessFeeTypeCodeTService {
    @Autowired
    private RpBusinessFeeTypeCodeTMapper rpBusinessFeeTypeCodeTMapper;
    public List<RpBusinessFeeTypeCodeT> selectAllFee() {
        return rpBusinessFeeTypeCodeTMapper.selectAll();
    }
}
