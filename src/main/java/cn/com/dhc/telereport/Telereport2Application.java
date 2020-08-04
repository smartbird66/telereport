package cn.com.dhc.telereport;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.com.dhc.telereport.mapper") //数据库持久层
public class Telereport2Application {

    public static void main(String[] args) {
        SpringApplication.run(Telereport2Application.class, args);
    }

}
