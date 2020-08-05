package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.entity.RpCityCodeT;
import cn.com.dhc.telereport.mapper.RpCityCodeTMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpCityCodeTService {
    @Autowired
    private RpCityCodeTMapper rpCityCodeTMapper;

    public List<RpCityCodeT> selectAllCity() {
        return rpCityCodeTMapper.selectAll();
    }
}
