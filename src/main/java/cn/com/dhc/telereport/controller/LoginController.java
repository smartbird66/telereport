package cn.com.dhc.telereport.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})

@RequestMapping(value="/login")//用于区分不同模块
//一般情况下在开发时，一个子模块对应一个Controller类，同时也是该模块的请求路径
public class LoginController {
  @RequestMapping(value="/main")
  public String main()  {
      return "main";
  }
  @RequestMapping
  public ModelAndView string(){
      ModelAndView m=new ModelAndView("login");
      return m;
  }
}
