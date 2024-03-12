package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dao.EmployeeRepository;
import com.model.Employee;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping ("/gestionale")
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

	    // System.out.println(username);
	    //System.out.println(password);
	    
	    if (employee != null && employee.getPassword().equals(password)) {
	                    // Login riuscito
	    	System.out.println("provina provetta" +employee.toString());
	    				session.setAttribute("utente", employee);
	                    
	                    System.out.println("Faccio il log in sessione: " + session.getAttribute("utente")); 
	                    
	                    return "redirect:/home";
	                } else {
	                    // Login fallito
	                    model.addAttribute("error", "Credenziali non valide");
	                    return "login";
	                }
	            }
	    @GetMapping("/logout")
	    public String performLogout(HttpSession session, Model model) {
	    	
	    	System.out.println("Faccio logout dalla sessione: " + session.getAttribute("utente"));
	    	model.addAttribute("error", "Logout effettuato correttamente");
	        session.invalidate(); // Invalida la sessione e rimuove l'utente loggato
	        return "login";
	    }
}//classe
