package cn.com.dhc.telereport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller//用于标注当前类属于业务控制器（位于控制层）
public class HelloController {
    @ResponseBody
   @RequestMapping(value="/toHello")
    public String helloMethod(){
        //System.out.println("王志耀你好");
        return "哈哈哈";
    }
}
