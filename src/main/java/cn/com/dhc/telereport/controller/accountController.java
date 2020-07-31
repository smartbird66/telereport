package cn.com.dhc.telereport.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.dhc.telereport.entity.RpCityCodeT;
import cn.com.dhc.telereport.entity.RpProductCodeT;
import cn.com.dhc.telereport.service.RpAccountFeeRecordTService;
import cn.com.dhc.telereport.service.RpCityCodeTService;
import cn.com.dhc.telereport.service.RpProductCodeTService;

@Controller
@RequestMapping(value="/imputation")
public class accountController {
	@Autowired 
	private RpCityCodeTService rpCityCodeTService;
	@Autowired
	private RpAccountFeeRecordTService rpAccountFeeRecordTService;
	@Autowired
	private RpProductCodeTService rpProductCodeTService;
	
	@RequestMapping(value="/account")
	public String accountOutMonth2(Model model) {
		List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
		model.addAttribute("cityList", list); //属性名随便起
		List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
		model.addAttribute("productList", rpProductCodeTList); //属性名随便起
		return "account";
	}
}
