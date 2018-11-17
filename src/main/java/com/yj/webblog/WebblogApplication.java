package com.yj.webblog;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = {"com.yj.webblog.dao"})
public class WebblogApplication {

	public static void main(String[] args) {
		SpringApplication.run(WebblogApplication.class, args);
	}
}
