package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.mapper.RpCardCheckMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RpCardCheckService {
    @Autowired
    private RpCardCheckMapper rpCardCheckMapper;

    public void updateStatus(String Aid, String Cid){
        rpCardCheckMapper.updateStatus(Aid,Cid);
    }

}
