package com.rest;

import java.util.List;

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

import com.dao.CompanyClientRepository;
import com.model.CompanyClient;

@CrossOrigin
@RestController
@RequestMapping("CompanyClient")
public class CompanyClientRest {
	
	@Autowired
	private CompanyClientRepository companyClientRep;
	
	//CRUD stands for Create Read Update Delete
	
	//Create
	@PostMapping("addCompanyClient")
	public ResponseEntity<String> addCompanyClient (@RequestBody CompanyClient clientData) {
		
		CompanyClient client = companyClientRep.save(clientData);
		
		System.out.println("Data successfully added to DB.");
		
		return ResponseEntity.ok("Add Success");
		
		//localhost:8080/CompanyClient/addCompanyClient
		
	}
	
	//Read ID
	@GetMapping("findCompanyClientById")
	public CompanyClient findByIdCompanyClient (@RequestParam(value="idCompanyClient") int idCompanyClient) {
		
		CompanyClient client = companyClientRep.findByIdCompanyClient(idCompanyClient);
		
		return client;
		
		//localhost:8080/CompanyClient/findCompanyClientById?idCompanyClient=1
	}
	
	//Read NAME
	@GetMapping("findCompanyClientByName")
	public List<CompanyClient> findByName (@RequestParam(value="name") String name){
		
		return companyClientRep.findByName(name);
		
		//localhost:8080/CompanyClient/findCompanyClientByName?name=Accenture
	}
	
	//Read CITY
	@GetMapping("findCompanyClientByCity")
	public List<CompanyClient> findByCity (String city){
		
		return companyClientRep.findByCity(city);
		
		//localhost:8080/CompanyClient/findCompanyClientByCity?city=Roma
	}
	
	//Update
	@PutMapping("updateCompanyClient")
	public ResponseEntity<String> updateCompanyClient (@RequestBody CompanyClient clientData) {
		
		companyClientRep.save(clientData);
		
		System.out.println("DB Update successful");
		
		return ResponseEntity.ok("Update Success");
		
		//localhost:8080/CompanyClient/updateCompanyClient
	}
	
	//Delete
	@DeleteMapping("deleteCompanyClient")
	public ResponseEntity<String> deleteCompanyClient (@RequestParam(value="idCompanyClient") int idCompanyClient) {
		
		companyClientRep.deleteById(idCompanyClient);
		
		return ResponseEntity.ok("Company Client successfully deleted from DB.");
		
		//localhost:8080/CompanyClient/deleteCompanyClient?idCompanyClient=1
	}

}
