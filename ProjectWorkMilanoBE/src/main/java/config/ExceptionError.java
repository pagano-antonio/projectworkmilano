package config;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import jakarta.persistence.EntityNotFoundException;

@ControllerAdvice
public class ExceptionError {

	 @ExceptionHandler({Exception.class, EntityNotFoundException.class}) //EntityNotEcc.. serve per gestire l'eccezione quando non trova un entità
	    public String gestisciEccezione(Exception e, Model model) {
	        model.addAttribute("Error", e.getMessage());
	        return "Error";
	    }
}
