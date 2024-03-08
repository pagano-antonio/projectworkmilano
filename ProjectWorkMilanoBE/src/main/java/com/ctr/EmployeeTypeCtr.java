package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EmployeeTypeRepository;
import com.model.EmployeeType;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("EducationDegreeTypeCtr")

public class EmployeeTypeCtr {
	
	@Autowired
    private EmployeeTypeRepository employeeTypeRep;
	
	@GetMapping("/home")
    public String home(Model model) {
        return "home";
	}
	
	@GetMapping("/preInserimento")
    public String preInserimento(Model model) {

        return "OK";
    } 
	
	@PostMapping("/inserimentoEmployeeType")
    public String inserisci(Model model, HttpServletRequest request, EmployeeType employeeType) {

		employeeTypeRep.save(employeeType);
		return "OK";
    }
	
	@GetMapping("/preInserimentoId")
    public String preInserimentoId(Model model) {
		
        return "OK";
    }
	
	@PostMapping("/ricercaEmployeeTypePerId")
	public String ricercaById(Model model, int idEmployeeType) {
	
		EmployeeType employeeType = employeeTypeRep.findById(idEmployeeType).get();
			model.addAttribute("employeeTypeCercato",employeeType);
			
			return "OK";
	}
	
	@PostMapping("/aggiornaEmployeeTypePerId")
	public String aggiornaEmployeeTypePerId(Model model, EmployeeType employeeType) {
		System.out.println("aggiorno"+employeeType);
		employeeTypeRep.save(employeeType);
		return "OK";
	}
		
	@PostMapping("/eliminaEmployeeTypePerId")
	public String eliminaEmployeeTypePerId (Model model, int idEmployeeType) {
		System.out.println("Eliminazione riuscita: " + idEmployeeType);
		
		employeeTypeRep.deleteById(idEmployeeType);
		return "OK";
	}

}

	

