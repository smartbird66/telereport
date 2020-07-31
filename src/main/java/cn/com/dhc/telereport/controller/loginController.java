/**
 * 
 */
/**
 * @author 22359
 *
 */
package cn.com.dhc.telereport.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.com.dhc.telereport.entity.RpAccountFeeRecordT;
import cn.com.dhc.telereport.entity.RpCityCodeT;
import cn.com.dhc.telereport.form.RpAccountFeeRecordTForm;
import cn.com.dhc.telereport.form.RpAccountGatherTForm;
import cn.com.dhc.telereport.service.RpAccountFeeRecordTService;
import cn.com.dhc.telereport.service.RpCityCodeTService;

@Controller
@RequestMapping(value="/login") // 区分不同子模块
// 一般开发模式下，一个子模块对应一个controller类，同时也对应一个去请求的路径
public class loginController{
	@Autowired // 自动注入,相当于private RpAccountGatherTService rpAccountGatherTService= new rpAccountGatherTService();
	            //并且自动注入会将此类交给spring容器自动管理，new出来的变量不会背容器管理
	private RpCityCodeTService rpCityCodeTService;
	@Autowired
	private RpAccountFeeRecordTService rpAccountFeeRecordTService;
	//private RpAccountGatherTService rpAccountGatherTService;
	/*
	 * 该方法用于从index跳转到归集页面
	 */
	@RequestMapping(value="/main1")
	public String main(Model model) {
		// 调用service层中的方法完成所有城市的查询
		List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
		model.addAttribute("cityList", list); //属性名随便起
		return "main1";
	}
	/*、
	 * 该方法用于提供表单查询
	 */
	@RequestMapping(value="/main1", method=RequestMethod.POST)
	public String accountOutMonth(RpAccountFeeRecordTForm rpAccountFeeRecordTForm,Model model) {
		//调用service层的方法完成查询操作
		List<RpAccountFeeRecordT> accountFeeRecordList = rpAccountFeeRecordTService.selectByInfo(rpAccountFeeRecordTForm);
		model.addAttribute("accountFeeRecordList", accountFeeRecordList);
		
		// 调用service层中的方法完成所有城市的查询
		List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
		model.addAttribute("cityList", list); //属性名随便起
		//System.out.println(rpAccountFeeRecordTForm);
		return "main1";
	}
	
	@RequestMapping(value="/account")
	public String accountOutMonth2(Model model) {
		//System.out.println(rpAccountFeeRecordTForm);
		return "imputation/account";
	}
}