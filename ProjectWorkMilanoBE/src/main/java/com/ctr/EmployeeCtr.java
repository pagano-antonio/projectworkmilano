package com.ctr;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EmployeeRepository;
import com.dao.EmployeeTypeRepository;
import com.model.Employee;
import com.model.EmployeeType;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("EmployeeCtr")

public class EmployeeCtr {
	
	@Autowired
    private EmployeeRepository employeeRep;
	@Autowired
	private EmployeeTypeRepository employeeTypeRep;
	
	
	
	@GetMapping("/preInserimento")
    public String preInserimento(Model model) {
		List<EmployeeType> lista = employeeTypeRep.findAll();
		model.addAttribute("lista",lista);
        return "employeeAdd";
    } 
	
	@PostMapping("/inserimentoEmployee")
    public String inserisci(Model model, Employee employee) {
		employeeRep.save(employee);
		List<Employee> lista = employeeRep.findAll();
		model.addAttribute("lista",lista);
		return "seeallEmployees";
    }
	
	@GetMapping("/preInserimentoId")
    public String preInserimentoId(Model model) {
		
        return "OK";
    }
	
	@PostMapping("/ricercaEmployeePerId")
	public String ricercaById(Model model, int idEmployee) {
	
		Employee employee = employeeRep.findById(idEmployee).get();
			model.addAttribute("employeeCercato",employee);
			
			return "OK";
	}
	
	@GetMapping("/aggiornaEmployeePerId")
	public String preAggiornaEmployeePerId(Model model, int idEmployee) {
		Employee employee = employeeRep.findById(idEmployee).get();
		model.addAttribute("employee",employee);
		List<EmployeeType> lista = employeeTypeRep.findAll();
		model.addAttribute("lista",lista);
		return "employeeUpdate";
	}
	
	
	@PostMapping("/aggiornaEmployeePerId")
	public String aggiornaEmployeePerId(Model model, Employee employee, HttpSession session) {
	
		//employeeRep.save(employee);
		//if (session.getAttribute(""))
		//session.setAttribute("utente", employee);
		//model.addAttribute("employee",employee);
		

		    
		    // Verifica se l'employee è quello attualmente in sessione
		    Employee employeeInSession = (Employee) session.getAttribute("utente");
		    if (employeeInSession != null && employeeInSession.getIdEmployee() == employee.getIdEmployee()) {
		        // Aggiorna e salva l'employee
		        employeeRep.save(employee);
		        // Aggiorna l'employee in sessione
		        session.setAttribute("utente", employee);
		    } else {
		        // Aggiorna e salva l'employee senza modificare la sessione
		        employeeRep.save(employee);
		    }

		    // Aggiungi l'employee aggiornato al model
		    model.addAttribute("employee", employee);
		
		
		
		
		
		List<EmployeeType> lista = employeeTypeRep.findAll(); //per mandare i livelli di employee
		model.addAttribute("lista",lista); // per mandare i livello di employee
		return "employeeUpdate";
	}
		
	@GetMapping("/eliminaEmployeePerId")
	public String eliminaEmployeePerId (Model model, int idEmployee) {
		System.out.println("Eliminazione riuscita: " + idEmployee);
		employeeRep.deleteById(idEmployee);
		List<Employee> lista = employeeRep.findAll();
		model.addAttribute("lista",lista);
		return "seeallEmployees";
	}
	
	@GetMapping("/seeallEmployees")
	public String seeallEmployees (Model model) {

		System.out.println("entra");
		
		List<Employee> lista = employeeRep.findAll();
		model.addAttribute("lista",lista);
		
		System.out.println(lista);
		
		return "seeallEmployees";
	}

}

	

