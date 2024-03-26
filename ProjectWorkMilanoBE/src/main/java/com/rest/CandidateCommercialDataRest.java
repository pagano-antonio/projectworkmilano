package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateCommercialDataRepository;
import com.model.CandidateCommercialData;

@CrossOrigin
@RestController
@RequestMapping("/CandidateCommercialData")
public class CandidateCommercialDataRest {

	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
	
	
	//AGGIUNGI
		
	@PostMapping("addCandidateCommercialData")
	public ResponseEntity<String> addCandidateCommercialData (@RequestBody CandidateCommercialData candidateCommercialData) {		
			
		candidateCommercialDataRep.save(candidateCommercialData);
		return ResponseEntity.ok("Save Success");
		
	}
		
	//AGGIORNA
		
	@PutMapping("updateCandidateCommercialData")
	public ResponseEntity<String> updateCandidateCommercialData (@RequestBody CandidateCommercialData candidateCommercialData) {
		
		candidateCommercialDataRep.save(candidateCommercialData);
		return ResponseEntity.ok("Update Success");
		
	}
		
	//ELIMINA
		
	@DeleteMapping ("deleteCandidateCommercialData/{idCandidateCommercialData}")	
	public ResponseEntity<String> deleteCandidateCommercialData (@PathVariable (name = "idCandidateCommercialData") Integer idCandidateCommercialData) {
			
		candidateCommercialDataRep.deleteById(idCandidateCommercialData);
		return ResponseEntity.ok("Delete Success");
		
	}
		
	//CERCA PER ID
		
	@GetMapping("findByIdCandidateCommercialData/{idCandidateCommercialData}")
	public CandidateCommercialData findByIdCandiidateCommercialData (@PathVariable(value = "idCandidateCommercialData") Integer idCandidateCommercialData){
			
		CandidateCommercialData candidateCommercialData = candidateCommercialDataRep.findById(idCandidateCommercialData).get();		
		return candidateCommercialData;
	}	
}
