package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpProductCodeT;
import cn.com.dhc.telereport.mapper.RpProductCodeTMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpProductCodeTService {
    @Autowired
    private RpProductCodeTMapper rpProductCodeTMapper;
    public List<RpProductCodeT> selectAllProduct() {
        return rpProductCodeTMapper.selectAll();
    }
}
