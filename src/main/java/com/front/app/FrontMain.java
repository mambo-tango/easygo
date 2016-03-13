package com.front.app;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
@ImportResource("classpath:spring/spring.xml")
public class FrontMain {

	public static void main(String[] args) {
		SpringApplication app = new SpringApplication(FrontMain.class);
        app.setAdditionalProfiles();
        app.setBannerMode(Banner.Mode.LOG);
        app.run(args);

	}

}
