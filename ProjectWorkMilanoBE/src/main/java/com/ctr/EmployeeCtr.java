package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EmployeeRepository;
import com.model.Employee;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("EducationDegreeTypeCtr")

public class EmployeeCtr {
	
	@Autowired
    private EmployeeRepository employeeRep;
	
	@GetMapping("/home")
    public String home(Model model) {
        return "home";
	}
	
	@GetMapping("/preInserimento")
    public String preInserimento(Model model) {

        return "OK";
    } 
	
	@PostMapping("/inserimentoEmployee")
    public String inserisci(Model model, HttpServletRequest request, Employee employee) {

		employeeRep.save(employee);
		return "OK";
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
	
	@PostMapping("/aggiornaEmployeePerId")
	public String aggiornaEmployeePerId(Model model, Employee employee) {
		System.out.println("aggiorno"+employee);
		employeeRep.save(employee);
		return "OK";
	}
		
	@PostMapping("/eliminaEmployeePerId")
	public String eliminaEmployeePerId (Model model, int idEmployee) {
		System.out.println("Eliminazione riuscita: " + idEmployee);
		
		employeeRep.deleteById(idEmployee);
		return "OK";
	}

}

	

