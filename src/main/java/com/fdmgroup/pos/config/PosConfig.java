package com.fdmgroup.pos.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.fdmgroup.pos.classes.Basket;
import com.fdmgroup.pos.classes.LineItem;
import com.fdmgroup.pos.classes.Trikke;

@Configuration
public class PosConfig {
	
	@Bean
	Basket basket() {
		return new Basket();
	}
	
	@Bean
	Trikke trikke() {
		//TODO fill in trikke info
		return new Trikke();
	}
	
	@Bean
	LineItem lineItem() {
		return new LineItem();
	}
}
