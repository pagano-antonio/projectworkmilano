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

import com.dao.EmployeeTypeRepository;
import com.model.EmployeeType;

@CrossOrigin
@RestController
@RequestMapping("EmployeeType")
public class EmployeeTypeRest {
	
	@Autowired
    private EmployeeTypeRepository employeeTypeRep;
	
//--------------------INSERISCI---------------------------------------

	@PostMapping("inserisciEmployeeType")
    public ResponseEntity<String> inserisciEmployeeType(@RequestBody EmployeeType employeeType) {

        System.out.println("Inserito nel db:"+employeeType);
        employeeTypeRep.save(employeeType);

        return ResponseEntity.ok("OK, inserito");
    }
	
//--------------------AGGIORNA---------------------------------------
	
	@PutMapping("aggiornaEmployeeType")
	public ResponseEntity<String> aggiornaEmployeeType (@RequestBody EmployeeType employeeType ) {

		System.out.println("Aggiornamento riuscito"+ employeeType);
		employeeTypeRep.save(employeeType);
		
		return ResponseEntity.ok("Ok, aggiornata");
	}
	
//--------------------ELIMINA---------------------------------------
	
	@DeleteMapping("eliminaEmployeeType/{idEmployeeType}")
	public ResponseEntity<String> eliminaEmployeeType (@RequestParam(value="idEmployeeType") int idEmployeeType) {
		
		System.out.println("Eliminazione riuscita: " +idEmployeeType);
		employeeTypeRep.deleteById(idEmployeeType);
		return ResponseEntity.ok("Ok, eliminata");
	}
	
//--------------------CERCA BY ID---------------------------------------
	
	@GetMapping("ricercaEmployeeTypeById")
	public EmployeeType ricercaEmployeeTypeById (@RequestParam(value="idEmployeeType") int idEmployeeType) {
		
		EmployeeType employeeType = employeeTypeRep.findByIdEmployeeType(idEmployeeType);
		
		return employeeType;
		
		//localhost:8080/EducationDegreeType/findeducationDegreeTypeById?ideducationDegreeType=1
	}	
}
