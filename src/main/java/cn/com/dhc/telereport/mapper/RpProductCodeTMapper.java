package cn.com.dhc.telereport.mapper;

import java.util.List;

import cn.com.dhc.telereport.entity.RpProductCodeT;
import org.springframework.stereotype.Component;

@Component
public interface RpProductCodeTMapper {
	
	public List<RpProductCodeT> selectAllProduct();

}
