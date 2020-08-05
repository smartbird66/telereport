package cn.com.dhc.telereport.service;

import cn.com.dhc.telereport.mapper.UserDao;
import cn.com.dhc.telereport.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {
    //注入dao
    @Autowired
    protected UserDao userDao;

    //注册
    public boolean register(User user){
        if(userDao.insertUser(user)>0){
            return true;
        }
        System.out.println(user.getUsername()+user.getPassword());
        return false;
    }
}
