package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpAccountTypeCodeT;
import cn.com.dhc.telereport.mapper.RpAccountTypeCodeTMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//出账收入类型
@Service
public class RpAccountTypeCodeTService {
    @Autowired
    private RpAccountTypeCodeTMapper rpAccountTypeCodeTMapper;
    public List<RpAccountTypeCodeT> selectAllAccount() {
        return rpAccountTypeCodeTMapper.selectAll();
    }
}
