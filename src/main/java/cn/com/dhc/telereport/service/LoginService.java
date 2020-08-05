package cn.com.dhc.telereport.service;



import cn.com.dhc.telereport.mapper.UserDao;
import cn.com.dhc.telereport.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    //注入dao
    @Autowired
    protected UserDao userDao;

    //登录
    public User login(String username, String password){

            return userDao.findByUsernameAndPassword(username,password);

    }


}
