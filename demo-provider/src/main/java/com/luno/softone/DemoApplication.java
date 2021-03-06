package com.luno.softone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.luno.**.dao")
public class DemoApplication {

	private static ConfigurableApplicationContext context;

	public static void main(String[] args) {

		context = SpringApplication.run(DemoApplication.class, args);

	}
}
