package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.mapper.RpAccountFeeRecordCheckMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RpAccountFeeRecordCheckService {
    @Autowired
    private RpAccountFeeRecordCheckMapper rpAccountFeeRecordCheckMapper;

    public void updateStatus(String Aid, String Cid){
        rpAccountFeeRecordCheckMapper.updateStatus(Aid,Cid);
    }
}
