package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.mapper.RpWriteOffTypeCodeTMapper;
import cn.com.dhc.telereport.entity.RpWriteOffTypeCodeT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RpWriteOffTypeCodeTService {

    @Autowired
    private RpWriteOffTypeCodeTMapper rpWriteOffTypeCodeTMapper;
    public List<RpWriteOffTypeCodeT> selectAllWrite() {
        return rpWriteOffTypeCodeTMapper.selectAll();
    }
}
