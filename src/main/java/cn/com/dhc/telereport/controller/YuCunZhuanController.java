package cn.com.dhc.telereport.controller;

import cn.com.dhc.telereport.entity.RpCityCodeT;
import cn.com.dhc.telereport.entity.RpPreFeeRecordT;
import cn.com.dhc.telereport.entity.RpProductCodeT;
import cn.com.dhc.telereport.entity.RpWriteOffTypeCodeT;

import cn.com.dhc.telereport.form.RpPreFeeRecordTForm;
import cn.com.dhc.telereport.service.RpCityCodeTService;
import cn.com.dhc.telereport.service.RpPreFeeRecordTService;
import cn.com.dhc.telereport.service.RpProductCodeTService;
import cn.com.dhc.telereport.service.RpWriteOffTypeCodeTService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/yucunzhuan")//预存转模块请求路径
public class YuCunZhuanController {
    @Autowired//相当于private RpCityCodeTService rpCityCodeTService = new RpCityCodeTService();
    private RpCityCodeTService rpCityCodeTService;
    @Autowired
    private RpProductCodeTService rpProductCodeTService;
    @Autowired
    private RpWriteOffTypeCodeTService rpWriteOffTypeCodeTService;
    @Autowired
    private RpPreFeeRecordTService rpPreFeeRecordTService;
    /**
     * 该方法用于从菜单跳转到预存转收入查询页面
     * @return 逻辑视图
     */
    @RequestMapping("/list")
    public String list(Model model) {
        List<RpCityCodeT> list =  rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list);//城市编码
        List<RpProductCodeT> list1 = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList",list1);//产品编码
        List<RpWriteOffTypeCodeT> list2 = rpWriteOffTypeCodeTService.selectAllWrite();
        model.addAttribute("writeList",list2);
        return "/yucunzhuan/list";
    }
    @RequestMapping(value="/list", method= RequestMethod.POST)
    public String show(RpPreFeeRecordTForm rpPreFeeRecordTForm,
                       Model model) {
        //调用Service层中的方法根据查询条件完成查询操作
        List<RpPreFeeRecordT> rpPreFeeRecordList =rpPreFeeRecordTService.selectByInfo(rpPreFeeRecordTForm);
        model.addAttribute("rpPreFeeRecordList", rpPreFeeRecordList);
        //System.out.println("rpCardSaleRecordList");
        //调用Service层中的方法完成查询所有城市的操作。
        List<RpCityCodeT> list =rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list);//城市编码
        List<RpProductCodeT> list1 = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList",list1);//产品编码
        List<RpWriteOffTypeCodeT> list2 = rpWriteOffTypeCodeTService.selectAllWrite();
        model.addAttribute("writeList",list2);//销账类型
        return "/yucunzhuan/list";

    }
    @PostMapping("/insert")
    public String input(RpPreFeeRecordTForm rpPreFeeRecordTForm){
        //System.out.println("dsfnidsu=======================================");
        //System.out.println("rpAccountFeeRecordTForm+=+++++++++++++++++++++"+rpAccountFeeRecordTForm);
        rpPreFeeRecordTService.input(rpPreFeeRecordTForm);
        return "/yucunzhuan/list";
    }
    @PostMapping("/import")
    public @ResponseBody
    String test(){

        return "我导入啦！";
    }
    @RequestMapping(value="/delete", method= RequestMethod.GET)
    public  String delete(Integer id){
        rpPreFeeRecordTService.delete(id);
        return "/yucunzhuan/list";
    }
}
