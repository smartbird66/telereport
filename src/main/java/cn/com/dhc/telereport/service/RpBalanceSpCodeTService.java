package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.mapper.RpBalanceSpCodeTMapper;
import cn.com.dhc.telereport.entity.RpBalanceSpCodeT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpBalanceSpCodeTService {
    @Autowired
    private RpBalanceSpCodeTMapper rpBalanceSpCodeTMapper;
    public List<RpBalanceSpCodeT> selectAllSp() {
        return rpBalanceSpCodeTMapper.selectAll();
    }
}
