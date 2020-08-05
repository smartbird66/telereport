package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpBalanceTypeCodeT;
import cn.com.dhc.telereport.mapper.RpBalanceTypeCodeTMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpBalanceTypeCodeTService {
    @Autowired
    private RpBalanceTypeCodeTMapper rpBalanceTypeCodeTMapper;
    public List<RpBalanceTypeCodeT> selectAllType() {
        return rpBalanceTypeCodeTMapper.selectAll();
    }
}
