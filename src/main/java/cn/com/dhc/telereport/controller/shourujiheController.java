package cn.com.dhc.telereport.controller;

import cn.com.dhc.telereport.entity.*;
import cn.com.dhc.telereport.form.*;
import cn.com.dhc.telereport.service.*;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/shourujihe")
public class shourujiheController {
    @Autowired   //城市编码
    private RpCityCodeTService rpCityCodeTService;
    @Autowired
    private RpAccountFeeRecordTService rpAccountFeeRecordTService;
    @Autowired  // 产品编码
    private RpProductCodeTService rpProductCodeTService;
    @Autowired  // 出账收入类型编码
    private RpAccountTypeCodeTService rpAccountTypeCodeTService;
    @Autowired  //销账类型编码
    private RpWriteOffTypeCodeTService rpWriteOffTypeCodeTService;
    @Autowired  //结算类型编码
    private RpBalanceTypeCodeTService rpBalanceTypeCodeTService;
    @Autowired //结算运营商编码
    private RpBalanceSpCodeTService rpBalanceSpCodeTService;
    @Autowired  // 出账汇总表查询
    private RpAccountGatherTService rpAccountGatherTService;
    @Autowired //出账稽核查询
    private RpAccountFeeRecordCheckSService rpAccountFeeRecordCheckSService;
    @Autowired // 卡销售归集查询
    private RpCardSaleRecordTService rpCardSaleRecordTService;
    @Autowired  // 预转存归集查询
    private RpPreFeeGatherTService rpPreFeeGatherTService;
    @Autowired // 网间结算归集查询
    private RpNetBalanceRecordTService rpNetBalanceRecordTService;
    @Autowired // 通知单归集查询
    private RpBusinessFeeGatherTService rpBusinessFeeGatherTService;
    @Autowired  // 通知单收入编码
    private RpBusinessFeeTypeCodeTService rpBusinessFeeTypeCodeTService;
    @Autowired //出账收入稽核状态变更
    private RpAccountFeeRecordCheckService rpAccountFeeRecordCheckService;
    // 出账稽核
    @RequestMapping(value="/account")
    public String accountOutMonth(Model model) {
        // 调用Service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用Service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用Service层的出账类型编码
        List<RpAccountTypeCodeT> rpAccountTypeCodeTList = rpAccountTypeCodeTService.selectAllRpAccountTypeCodeT();
        model.addAttribute("rpAccountTypeCodeTList", rpAccountTypeCodeTList);

        return "shourujihe/account";
    }

    // 出账收入稽核查询
    @RequestMapping(value="/account", method=RequestMethod.POST)
    public String accountOutMonth2(@RequestParam(value = "page",defaultValue = "1") int page, RpAccountFeeCheckForm rpAccountFeeRecordForm, Model model) {
        //重新加载查询条件
        RpAccountFeeCheckForm rpAccountFeeCheckReturn=new RpAccountFeeCheckForm();
        BeanUtils.copyProperties(rpAccountFeeRecordForm,rpAccountFeeCheckReturn);
        model.addAttribute("rpAccountFeeRecordForm",rpAccountFeeCheckReturn);
        System.out.println(rpAccountFeeRecordForm);
        // 调用Service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用Service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用Service层的出账类型编码
        List<RpAccountTypeCodeT> rpAccountTypeCodeTList = rpAccountTypeCodeTService.selectAllRpAccountTypeCodeT();
        model.addAttribute("rpAccountTypeCodeTList", rpAccountTypeCodeTList);
        PageHelper.startPage(page,5);
        // 调用service层的post查询出账归集功能
        List<RpAccountFeeRecordT> accountFeeRecordList = rpAccountFeeRecordCheckSService.selectByInfo(rpAccountFeeRecordForm);
        PageInfo pages=new PageInfo(accountFeeRecordList,20);
        model.addAttribute("PageInfo", pages);

        return "shourujihe/account";
    }


    //出账收入稽核状态变更
    @RequestMapping(value = "/account/{Aid}/{Cid}/update")
    public String accountCheckChange(@PathVariable("Aid") String Aid,@PathVariable("Cid") String Cid, Model model){
        // 调用Service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用Service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用Service层的出账类型编码
        List<RpAccountTypeCodeT> rpAccountTypeCodeTList = rpAccountTypeCodeTService.selectAllRpAccountTypeCodeT();
        model.addAttribute("rpAccountTypeCodeTList", rpAccountTypeCodeTList);
        // 调用Service层的更新稽核状态
        rpAccountFeeRecordCheckService.updateStatus(Aid,Cid);
        return "account";
    }


    //出账收入稽核状态变更
    @RequestMapping(value = "/account/update",params = {"Aid","Cid"})
    public String accountCheckChange2(String Aid,String Cid, Model model){
        // 调用Service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用Service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用Service层的出账类型编码
        List<RpAccountTypeCodeT> rpAccountTypeCodeTList = rpAccountTypeCodeTService.selectAllRpAccountTypeCodeT();
        model.addAttribute("rpAccountTypeCodeTList", rpAccountTypeCodeTList);
        // 调用Service层的更新稽核状态
        rpAccountFeeRecordCheckService.updateStatus(Aid,Cid);
        return "shourujihe/account";
    }

    // 卡销售归集
    @RequestMapping(value="/cardTo")
    public String cardTo(Model model) {
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        return "shourujihe/cardTo";
    }

    // 卡销售归集查询
    @RequestMapping(value="/cardTo", method=RequestMethod.POST)
    public String cardTo2(RpCardSaleRecordTForm rpCardSaleRecordTForm, Model model) {
        System.out.println(rpCardSaleRecordTForm);
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用service层的卡销售归集查询
        List<RpCardSaleRecordT> RpCardSaleRecordTList = rpCardSaleRecordTService.selectByInfo(rpCardSaleRecordTForm);
        model.addAttribute("RpCardSaleRecordTList", RpCardSaleRecordTList);
        return "shourujihe/cardTo";
    }

    // 预转存收入归集
    @RequestMapping(value="/stored")
    public String stored(Model model) {
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用service层的销账类型编码
        List<RpWriteOffTypeCodeT> rpWriteOffTypeCodeTList = rpWriteOffTypeCodeTService.selectAllRpWriteOffTypeCodeT();
        model.addAttribute("rpWriteOffTypeCodeTList", rpWriteOffTypeCodeTList);
        return "shourujihe/stored";
    }

    @RequestMapping(value="/stored",method=RequestMethod.POST)
    public String stored2(RpPreFeeGatherTForm rpPreFeeGatherTForm, Model model) {
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用service层的销账类型编码
        List<RpWriteOffTypeCodeT> rpWriteOffTypeCodeTList = rpWriteOffTypeCodeTService.selectAllRpWriteOffTypeCodeT();
        model.addAttribute("rpWriteOffTypeCodeTList", rpWriteOffTypeCodeTList);
        // 调用service层的预转存归集查询
        List<RpPreFeeGatherT> rpPreFeeGatherTList = rpPreFeeGatherTService.selectByInfo(rpPreFeeGatherTForm);
        model.addAttribute("RpPreFeeGatherTList", rpPreFeeGatherTList);
        return "shourujihe/stored";
    }

    // 网间收入归集
    @RequestMapping(value="/internet")
    public String internet(Model model) {
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用service层的结算类型编码
        List<RpBalanceTypeCodeT> rpBalanceTypeCodeTList = rpBalanceTypeCodeTService.selectAllRpBalanceTypeCodeT();
        model.addAttribute("rpBalanceTypeCodeTList", rpBalanceTypeCodeTList);
        // 调用service层的运营商类型编码
        List<RpBalanceSpCodeT> rpBalanceSpCodeTList = rpBalanceSpCodeTService.selectAll();
        model.addAttribute("rpBalanceSpCodeTList", rpBalanceSpCodeTList);
        return "shourujihe/internet";
    }

    @RequestMapping(value="/internet", method=RequestMethod.POST)
    public String internet2(RpNetBalanceRecordTForm rpNetBalanceRecordTForm, Model model) {
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用service层的结算类型编码
        List<RpBalanceTypeCodeT> rpBalanceTypeCodeTList = rpBalanceTypeCodeTService.selectAllRpBalanceTypeCodeT();
        model.addAttribute("rpBalanceTypeCodeTList", rpBalanceTypeCodeTList);
        // 调用service层的运营商类型编码
        List<RpBalanceSpCodeT> rpBalanceSpCodeTList = rpBalanceSpCodeTService.selectAll();
        model.addAttribute("rpBalanceSpCodeTList", rpBalanceSpCodeTList);
        // 调用service层的网间结算归集查询
        List<RpNetBalanceRecordT> rpNetBalanceRecordTList = rpNetBalanceRecordTService.selectByInfo(rpNetBalanceRecordTForm);
        model.addAttribute("rpNetBalanceRecordTList",rpNetBalanceRecordTList);
        return "shourujihe/internet";
    }

    // 通知单归集
    @RequestMapping(value="/messageBill")
    public String messageBill(Model model) {
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用service层通知单编码
        List<RpBusinessFeeTypeCodeT> rpBusinessFeeTypeCodeTList = rpBusinessFeeTypeCodeTService.selectAll();
        model.addAttribute("rpBusinessFeeTypeCodeTList",rpBusinessFeeTypeCodeTList);
        return "shourujihe/messageBill";
    }

    // 通知单归集查询
    @RequestMapping(value="/messageBill",method=RequestMethod.POST)
    public String messageBill2(RpBusinessFeeGatherTForm rpBusinessFeeGatherTForm,Model model) {
        // 调用service层的城市编码
        List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
        model.addAttribute("cityList", list); //属性名随便起
        // 调用service层的产品编码
        List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
        model.addAttribute("productList", rpProductCodeTList);
        // 调用service层通知单编码
        List<RpBusinessFeeTypeCodeT> rpBusinessFeeTypeCodeTList = rpBusinessFeeTypeCodeTService.selectAll();
        model.addAttribute("rpBusinessFeeTypeCodeTList",rpBusinessFeeTypeCodeTList);
        // 调用Service层的通知单查询
        List<RpBusinessFeeGatherT> rpBusinessFeeGatherTList = rpBusinessFeeGatherTService.selectByInfo(rpBusinessFeeGatherTForm);
        model.addAttribute("rpBusinessFeeGatherTList",rpBusinessFeeGatherTList);
        return "shourujihe/messageBill";
    }
}
