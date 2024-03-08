package config;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionError {

	 @ExceptionHandler(Exception.class)
	    public String gestisciEccezione(Exception e, Model model) {
	        model.addAttribute("error", e.getMessage());
	        return "Error";
	    }
}
