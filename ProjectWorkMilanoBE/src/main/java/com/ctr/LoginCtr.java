package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dao.EmployeeRepository;
import com.model.Employee;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginCtr {
	
	@Autowired
    private EmployeeRepository employeeRepository;
	
//////////////////////////////////////////////////////////////////////////////////////

	    @GetMapping("/login")
	    public String showLoginPage() {
	        return "login";}  
	    
	        
	    @PostMapping("/login")
	    public String performLogin(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
	    Employee employee = employeeRepository.findByUsername(username); //creare in repository?

	    if (employee != null && employee.getPassword().equals(password)) {
	                    // Login riuscito
	    				session.setAttribute("utente", employee);
	                    model.addAttribute("username", username);
	                    
	                    System.out.println("Faccio il log in sessione: " + session.getAttribute("utente")); 
	                    
	                    return "redirect:/home";
	                } else {
	                    // Login fallito
	                    model.addAttribute("error", "Credenziali non valide");
	                    return "login";
	                }
	            }
	    @GetMapping("/logout")
	    public String performLogout(HttpSession session) {
	    	
	    	System.out.println("Faccio logout dalla sessione: " + session.getAttribute("utente"));
	    	
	        session.invalidate(); // Invalida la sessione e rimuove l'utente loggato
	        return "redirect:/login";
	    }
}//classe
