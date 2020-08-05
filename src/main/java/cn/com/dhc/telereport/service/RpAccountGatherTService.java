package cn.com.dhc.telereport.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.mybatis.spring.SqlSessionUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import cn.com.dhc.telereport.entity.RpAccountGatherT;
import cn.com.dhc.telereport.form.RpAccountGatherTForm;
import cn.com.dhc.telereport.mapper.RpAccountGatherTMapper;

@Service
public class RpAccountGatherTService {
	@Autowired
	private RpAccountGatherTMapper rpAccountGatherTMapper;
	
	//private SqlSessionFactory sqlSessionFactory;
	public List<RpAccountGatherT> selectByInfo(RpAccountGatherTForm rpAccountGatherTForm){
		// 处理accountMonth字符串，将xxxx-xx转化为XXXXxx
		if(rpAccountGatherTForm.getAccountMonth() != null && rpAccountGatherTForm.getAccountMonth() != "") {
	
			String[] strSplit = rpAccountGatherTForm.getAccountMonth().split("-");
			int i = 0;
			String str1 = "";
			for(;i<strSplit.length;i++) {
				str1 += strSplit[i];
			}
			rpAccountGatherTForm.setAccountMonth(str1);
		}
		RpAccountGatherT rpAccountGatherT = new RpAccountGatherT();
		BeanUtils.copyProperties(rpAccountGatherTForm, rpAccountGatherT);
		
		//PageHelper.startPage(1, 2);
		return rpAccountGatherTMapper.selectByInfo(rpAccountGatherT);
	}
	
	public PageInfo selectByInfo(RpAccountGatherTForm rpAccountGatherTForm,int page){
		// 处理accountMonth字符串，将xxxx-xx转化为XXXXxx
				String[] strSplit = rpAccountGatherTForm.getAccountMonth().split("-");
				int i = 0;
				String str1 = "";
				for(;i<strSplit.length;i++) {
					str1 += strSplit[i];
				}
				rpAccountGatherTForm.setAccountMonth(str1);
				
				RpAccountGatherT rpAccountGatherT = new RpAccountGatherT();
				BeanUtils.copyProperties(rpAccountGatherTForm, rpAccountGatherT);
				
				PageHelper.startPage(page, 2);
		       	List<RpAccountGatherT>  userList= rpAccountGatherTMapper.selectByInfo(rpAccountGatherT);
		        PageInfo pages = new PageInfo(userList,2);
		        return pages;
		
	}
	/*public List<RpAccountGatherT> [] selectByInfo(RpAccountGatherTForm rpAccountGatherTForm,int pageSize){
		// 处理accountMonth字符串，将xxxx-xx转化为XXXXxx
		String[] strSplit = rpAccountGatherTForm.getAccountMonth().split("-");
		int i = 0;
		String str1 = "";
		for(;i<strSplit.length;i++) {
			str1 += strSplit[i];
		}
		rpAccountGatherTForm.setAccountMonth(str1);
		
		

        
		RpAccountGatherT rpAccountGatherT = new RpAccountGatherT();
		BeanUtils.copyProperties(rpAccountGatherTForm, rpAccountGatherT);
		
		
		//SqlSession session = sqlSessionFactory.openSession();
		//SqlSession session = sqlSessionFactory.openSession();
		//SqlSession session = SqlSessionUtils.getSqlSession();
		//RpAccountGatherTMapper mapper = session.getMapper(RpAccountGatherTMapper.class);
		//RowBounds rowBounds = new RowBounds(0,3);
        //设置分页的起点和limit显示几条
		// 起点，从第几页开始取
		int offset = (pageSize - 1) * 2;
		// 连续取几条
		int limit = 2;
//        RowBounds rowBounds = new RowBounds((pageSize - 1) * 2, 2);
        RowBounds rowBounds = new RowBounds(offset, limit);
        List<RpAccountGatherT> rpAccountGatherTList = rpAccountGatherTMapper.selectByInfo(rpAccountGatherT, rowBounds);//传入rowBounds 对象即可;
        for(RpAccountGatherT dt : rpAccountGatherTList){
        	System.out.println(dt);
        	}
        //        List<RpAccountGatherT> rpAccountGatherTList = rpAccountGatherTMapper.selectByInfo(rpAccountGatherT);
        // System.out.println(rpAccountGatherTList);
        //List<RpAccountGatherT> rpAccountGatherTList3 = new ArrayList<RpAccountGatherT>();
//        List<RpAccountGatherT> [] rpAccountGatherTList2 = new ArrayList<RpAccountGatherT>()[10];
//        int k=0, j;
//        for(k=0;k<rpAccountGatherTList.size()/limit; k++){
//        	for(j=0; j<limit; j++) {
//        		rpAccountGatherTList2[k] = new ArrayList<RpAccountGatherT>();
//        	}
//        	//System.out.println(dt);
//        }
		
        return null;
		//return rpAccountGatherTMapper.selectByInfo(rpAccountGatherT);
	}*/
	
}
