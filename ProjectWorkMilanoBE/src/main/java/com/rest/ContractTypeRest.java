package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dao.ContractTypeRepository;
import com.model.ContractType;

@CrossOrigin
@RestController
@RequestMapping("ContractType")
public class ContractTypeRest {
	
	@Autowired
	private ContractTypeRepository contractTypeRep;
	
	//CRUD stands for Create Read Update Delete
	
	//Create
	@PostMapping("addContractType")
	public ResponseEntity<String> addContractType (@RequestBody ContractType contractTypeData) {
		
		ContractType contract = contractTypeRep.save(contractTypeData);
		
		System.out.println("Data successfully added to DB.");
		
		return ResponseEntity.ok("Data successfully added to DB.");
		
		//localhost:8080/ContractType/addContractType
		
	}
	
	//Read ID
	@GetMapping("findContractTypeById")
	public ContractType findByIdContractType (@RequestParam(value="idContractType") int idContractType) {
		
		ContractType contract = contractTypeRep.findByIdContractType(idContractType);
		
		return contract;
		
		//localhost:8080/ContractType/findContractTypeById?idContractType=1
	}
	
	//Update
	@PutMapping("updateContractType")
	public ResponseEntity<String> updateContractType (@RequestBody ContractType contractTypeData) {
		
		ContractType contract = contractTypeRep.save(contractTypeData);
		
		System.out.println("DB Update successful");
		
		return ResponseEntity.ok("DB Update successful");
		
		//localhost:8080/ContractType/updateContractType
	}
	
	//Delete
	@DeleteMapping("deleteContractType")
	public ResponseEntity<String> deleteContractType (@RequestParam(value="idContractType") int idContractType) {
		
		contractTypeRep.deleteById(idContractType);
		
		return ResponseEntity.ok("Contract Type successfully deleted from DB.");
		
		//localhost:8080/ContractType/deleteContractType?idCompanyClient=1
	}


}
