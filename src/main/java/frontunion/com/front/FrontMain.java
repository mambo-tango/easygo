package frontunion.com.front;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration  
@ComponentScan  
@EnableAutoConfiguration
@ImportResource("classpath:spring/spring.xml")
public class FrontMain {

	public static void main(String[] args) {
		SpringApplication.run(FrontMain.class); 

	}

}
