package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ContractTypeRepository;
import com.model.ContractType;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/ContractTypeCtr")
public class ContractTypeCtr {
	
	@Autowired
	private ContractTypeRepository contractTypeRep;
	
	
	//GO TO create Contract Type
	@GetMapping("/addContractTypeForm")
	public String addContractTypeForm (Model model) {
		return "addContractType";
	}
	
	//CREATE Contract Type
	@PostMapping("/addContractType")
	public String addContractType (Model model, HttpServletRequest request, ContractType contract) {
		
		//Here goes something that checks if the Contract Type with these data already exists and returns
		//an "existing Contract Type" page or an error page
		
		contractTypeRep.save(contract);
		System.out.println("Contract Type successfully added to DB.");
		return "addContractTypeSuccess";
	}
	
	//GO TO read by ID
	@GetMapping("/findByIdContractTypeForm")
	public String findByIdContractTypeForm (Model model) {
		return "findByIdContractType";
	}
	
	//READ Contract Type by ID
	@GetMapping("/findByIdContractType")
	public String findByIdContractType (Model model, int idContractType) {
		ContractType contract = contractTypeRep.findByIdContractType(idContractType);
		
		if (contract != null) {
			model.addAttribute("idContractType", contract);
			return "findByIdContractTypeResults"; 
			} else {
			return "404error"; //we could add an error message, i don't know how to do that
		}
	}
	
	//GO TO update Contract Type
	@GetMapping("/updateContractTypeForm")
	public String updateContractTypeForm (Model model) {
		return "updateContractType";
	}
	
	//UPDATE Contract Type
	@PostMapping("/updateContractType")
	public String updateContractType (Model model, ContractType contract) {
		contractTypeRep.save(contract);
		
		System.out.println("DB Update successful");
		return "updateContractTypeSuccessful";
	}
	
	//GO TO delete Contract Type
	@GetMapping("/deleteContractTypeForm")
	public String deleteContractTypeForm (Model model) {
		return "deleteContractType";
	}
	
	//DELETE Contract Type
	@GetMapping("/deleteContractType")
	public String deleteContractType (Model model, int idContractType) {
		ContractType contract = contractTypeRep.findById(idContractType).orElse(null);

			if (contract != null) {
				contractTypeRep.delete(contract);
				System.out.println("Contract Type successfully deleted from DB.");
				return "deleteContractTypeSuccessful";
			} else {
				return "404error"; //we could add an error message, i don't know how to do that
			}
	}
}
