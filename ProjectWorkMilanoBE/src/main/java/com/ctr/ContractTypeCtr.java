package com.ctr;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ContractTypeRepository;
import com.model.ContractType;

@Controller
@RequestMapping("/ContractTypeCtr")
public class ContractTypeCtr {
	
	@Autowired
	private ContractTypeRepository contractTypeRep;
	
	
	//GO TO create Contract Type
	@GetMapping("/addContractTypeForm")
	public String addContractTypeForm () {
		return "addContractType";
	}
	
	//CREATE Contract Type
	@PostMapping("/addContractType")
	public String addContractType (ContractType contract) {
		List<ContractType> existingContracts = contractTypeRep.findByTitle(contract.getTitle());
		
		if(!existingContracts.isEmpty()) {
			System.out.println("Contract Type already exists in the DB.");
	        return "Error";
		} else {
		contractTypeRep.save(contract);
		System.out.println("Contract Type successfully added to DB.");
		return "addContractTypeSuccess";
		}
	}
	
	//GO TO read by ID
	@GetMapping("/findByIdContractTypeForm")
	public String findByIdContractTypeForm () {
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
			return "Error";
		}
	}
	
	//GO TO update Contract Type
	@GetMapping("/updateContractTypeForm")
	public String updateContractTypeForm () {
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
	public String deleteContractTypeForm () {
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
				return "Error";
			}
	}
}
