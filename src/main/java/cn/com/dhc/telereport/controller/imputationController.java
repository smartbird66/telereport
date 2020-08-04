package cn.com.dhc.telereport.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.com.dhc.telereport.entity.RpAccountGatherT;
import cn.com.dhc.telereport.entity.RpAccountTypeCodeT;
import cn.com.dhc.telereport.entity.RpBalanceSpCodeT;
import cn.com.dhc.telereport.entity.RpBalanceTypeCodeT;
import cn.com.dhc.telereport.entity.RpBusinessFeeGatherT;
import cn.com.dhc.telereport.entity.RpBusinessFeeTypeCodeT;
import cn.com.dhc.telereport.entity.RpCardSaleRecordT;
import cn.com.dhc.telereport.entity.RpCityCodeT;
import cn.com.dhc.telereport.entity.RpNetBalanceRecordT;
import cn.com.dhc.telereport.entity.RpPreFeeGatherT;
import cn.com.dhc.telereport.entity.RpProductCodeT;
import cn.com.dhc.telereport.entity.RpWriteOffTypeCodeT;
import cn.com.dhc.telereport.form.RpAccountGatherTForm;
import cn.com.dhc.telereport.form.RpBusinessFeeGatherTForm;
import cn.com.dhc.telereport.form.RpCardSaleRecordTForm;
import cn.com.dhc.telereport.form.RpNetBalanceRecordTForm;
import cn.com.dhc.telereport.form.RpPreFeeGatherTForm;
import cn.com.dhc.telereport.service.RpAccountFeeRecordTService;
import cn.com.dhc.telereport.service.RpAccountGatherTService;
import cn.com.dhc.telereport.service.RpAccountTypeCodeTService;
import cn.com.dhc.telereport.service.RpBalanceSpCodeTService;
import cn.com.dhc.telereport.service.RpBalanceTypeCodeTService;
import cn.com.dhc.telereport.service.RpBusinessFeeGatherTService;
import cn.com.dhc.telereport.service.RpBusinessFeeTypeCodeTService;
import cn.com.dhc.telereport.service.RpCardSaleRecordTService;
import cn.com.dhc.telereport.service.RpCityCodeTService;
import cn.com.dhc.telereport.service.RpNetBalanceRecordTService;
import cn.com.dhc.telereport.service.RpPreFeeGatherTService;
import cn.com.dhc.telereport.service.RpProductCodeTService;
import cn.com.dhc.telereport.service.RpWriteOffTypeCodeTService;

@Controller
@RequestMapping(value="/imputation")
public class imputationController {
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
	
	// 出账归集
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
		
		return "account";
	}
	
	// 出账归集查询
	@RequestMapping(value="/account", method=RequestMethod.POST)
	public String accountOutMonth2(RpAccountGatherTForm rpAccountGatherTForm,Model model) {
		// 调用Service层的城市编码
		List<RpCityCodeT> list = rpCityCodeTService.selectAllCity();
		model.addAttribute("cityList", list); //属性名随便起
		// 调用Service层的产品编码
		List<RpProductCodeT> rpProductCodeTList = rpProductCodeTService.selectAllProduct();
		model.addAttribute("productList", rpProductCodeTList); 
		// 调用Service层的出账类型编码
		List<RpAccountTypeCodeT> rpAccountTypeCodeTList = rpAccountTypeCodeTService.selectAllRpAccountTypeCodeT();
		model.addAttribute("rpAccountTypeCodeTList", rpAccountTypeCodeTList); 
		// 调用service层的post查询出账归集功能
		List<RpAccountGatherT> rpAccountGatherTList = rpAccountGatherTService.selectByInfo(rpAccountGatherTForm);
		model.addAttribute("rpAccountGatherTList", rpAccountGatherTList);
		return "account";
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
		return "cardTo";
	}
	
	// 卡销售归集查询
	@RequestMapping(value="/cardTo", method=RequestMethod.POST)
	public String cardTo2(RpCardSaleRecordTForm rpCardSaleRecordTForm,Model model) {
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
		return "cardTo";
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
		return "stored";
	}
	
	@RequestMapping(value="/stored",method=RequestMethod.POST)
	public String stored2(RpPreFeeGatherTForm rpPreFeeGatherTForm,Model model) {
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
		return "stored";
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
		return "internet";
	}
	
	@RequestMapping(value="/internet", method=RequestMethod.POST)
	public String internet2(RpNetBalanceRecordTForm rpNetBalanceRecordTForm,Model model) {
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
		return "internet";
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
		return "messageBill";
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
		return "messageBill";
	}
}
