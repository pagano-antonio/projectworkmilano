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

import com.dao.EducationDegreeTypeRepository;
import com.model.Candidate;
import com.model.EducationDegreeType;

@CrossOrigin
@RestController
@RequestMapping("EducationDegreeType")
public class EducationDegreeTypeRest {
	
	@Autowired
    private EducationDegreeTypeRepository educationDegreeTypeRep;

//--------------------INSERISCI---------------------------------------
	
	@PostMapping("inserisciEducationDegreeType")
    public ResponseEntity<String> inserisciEducationDegreeType(@RequestBody EducationDegreeType educationDegreeType) {

        System.out.println("Inserito nel db:"+educationDegreeType);
        educationDegreeTypeRep.save(educationDegreeType);

        return ResponseEntity.ok("OK, inserito");
    }
	
//--------------------AGGIORNA---------------------------------------
	
	@PutMapping("aggiornaEducationDegreeType")
	public ResponseEntity<String> aggiornaEducationDegreeType (@RequestBody EducationDegreeType educationDegreeType ) {

		System.out.println("Aggiornamento riuscito"+ educationDegreeType);
		educationDegreeTypeRep.save(educationDegreeType);
		
		return ResponseEntity.ok("Ok, aggiornata");
	}
	
//--------------------ELIMINA---------------------------------------
	
	@DeleteMapping("eliminaEducationDegreeType/{idEducationDegreeType}")
	public ResponseEntity<String> eliminaEducationDegreeType (@RequestParam(value="idEducationDegreeType") int idEducationDegreeType) {
		
		System.out.println("Eliminazione riuscita: " +idEducationDegreeType);
		educationDegreeTypeRep.deleteById(idEducationDegreeType);
		return ResponseEntity.ok("Ok, eliminata");
	}
	
//--------------------CERCA BY ID---------------------------------------
	
	@GetMapping("ricercaEducationDegreeTypeById")
	public EducationDegreeType ricercaEducationDegreeTypeById (@RequestParam(value="idEducationDegreeType") int idEducationDegreeType) {
		
		EducationDegreeType educationDegreeType = educationDegreeTypeRep.findByIdEducationDegreeType(idEducationDegreeType);
		
		return educationDegreeType;
		
		//localhost:8080/EducationDegreeType/findeducationDegreeTypeById?ideducationDegreeType=1
	}
	
	//FIND ALL
	@GetMapping("findAllEducationDegreeTypes")
	    public List<EducationDegreeType> findAllEducationDegreeTypes() {
	        return educationDegreeTypeRep.findAll();
	    }
}
