package com.freedom.live;

import org.springframework.beans.BeansException;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
@EnableAutoConfiguration
@ComponentScan
public class Application{



	
	public static void main(String[] args) throws BeansException, Exception {
		SpringApplication.run(Application.class, args);
	}
	
	@Bean
	public String startApp(ApplicationContext ctx) throws BeansException, Exception {
		
		ctx.getBean(MultithreadingManager.class).manageExtraction();
		
		return "";
	}




}
