package config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer  {
	
	//diciamo alla nostra webapp di consentire l'accesso solo alla pag di login e oscurare
	//le altre pagine a chi non ha prima effettuato il login

	    @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        registry.addInterceptor(new AuthenticationInterceptor()).addPathPatterns("/**").excludePathPatterns("/login");
	    }
	}

