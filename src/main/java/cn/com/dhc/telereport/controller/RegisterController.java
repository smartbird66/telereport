package cn.com.dhc.telereport.controller;


import cn.com.dhc.telereport.pojo.User;
import cn.com.dhc.telereport.service.LoginService;
import cn.com.dhc.telereport.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class RegisterController {


    @Autowired
    private RegisterService registerService;
    @Autowired
    private LoginService loginService;
    @RequestMapping(value = "login")
    public String zhuanLoign(){
        return "index";
    }

    @RequestMapping(value = "login.action", method = RequestMethod.POST)
    public String login(@RequestParam("username")String username,
                        @RequestParam("password")String password ,
                        Model model){
        System.out.println (username);
        System.out.println (password);
        if(loginService.login(username,password)!=null){
            User user=loginService.login(username,password);
           model.addAttribute("user",user) ;
            char c = username.charAt (0);
            if(c=='a'){

                return "account";
            }
            if(c=='b'){

                return "shourujihe/account";
            }if(c=='a'){

                return "account";
            }

        }
        System.out.println (loginService.login(username,password)!=null);
        model.addAttribute("username",username);
        model.addAttribute("password",password);
        System.out.println (loginService.login(username,password)!=null);
        model.addAttribute("msg","账号或密码错误");
        System.out.println (model);
        return "index";
    }
    @RequestMapping(value = "register")
    public String zhuanRegister(){
        return "register";
}


    @RequestMapping(value = "register.action", method = RequestMethod.POST)
    public String login(HttpServletRequest request,
                        @ModelAttribute User user,//@ModelAttribute这个注解可以将注册时输入的值封装成user对象，很方便
                        Model model             //model可以用model.addAttribute 添加属性，然后在跳转的jsp页面里用，也很好用
                                     ) throws IOException {
        if(user.getUsername()!=""&&user.getPassword()!=""&&!user.getImage().isEmpty()){



            //中间这一串是处理注册时上传的图片image保存到 “当前绝对路径+/upload”
            // 上传文件路径
            String path = request.getServletContext().getRealPath(
                    "/upload/");
            System.out.println("path = " + path);
            // 上传文件名
            String filename = user.getImage().getOriginalFilename();
            File filepath = new File(path,filename);
            // 判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            // 将上传文件保存到一个目标文件当中
            user.getImage().transferTo(new File(path+File.separator+ filename));




            // 将用户添加到model
            model.addAttribute("user", user);
            //将图片的地址（上传的文件名）赋值给ImageLu
            user.setImageLu(filename);
            registerService.register(user);


            return "index";
        }
        model.addAttribute("username",user.getUsername());
        model.addAttribute("password",user.getPassword());
        model.addAttribute("msg","不能为空");
        return "register" ;
    }
}
