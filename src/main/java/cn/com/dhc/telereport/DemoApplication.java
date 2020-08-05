package cn.com.dhc.telereport;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication

@MapperScan("cn.com.dhc.telereport.mapper")
public class DemoApplication  {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

}
