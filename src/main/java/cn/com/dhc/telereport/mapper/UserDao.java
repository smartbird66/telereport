package cn.com.dhc.telereport.mapper;

import cn.com.dhc.telereport.pojo.User;
import org.apache.ibatis.annotations.*;

import org.springframework.stereotype.Component;

@Component
public interface UserDao {
    @Insert("insert into tb_user(username,password,note,image_lu) values(#{username},#{password},#{note},#{imageLu})")
    public int insertUser(User user);



    @Select("select * from tb_user where username=#{username} and password=#{password}")
    //指定这个是让返回的User类返回的时候把返回的值对应起来，不写这个的话返回的值不知道对应谁
    @Results(id="hehe",value={
            @Result(id=true,column = "username",property = "username"),
            @Result(column = "password",property = "password"),
            @Result(column = "image_lu",property ="imageLu" )
    })
    //多个参数一定要指定对应的属性，不然Mybatis识别不了
    public User findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

}
