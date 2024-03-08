package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateCommercialDataRepository;
import com.dao.CandidateRepository;
import com.model.Candidate;
import com.model.CandidateCommercialData;

@RestController
@RequestMapping("/CandidateCommercialData")
public class CandidateCommercialDataRest {

	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
	
	
//AGGIUNGI
		
	@PostMapping("addCandidateCommercialData")
	public String addCandidateCommercialData (@RequestBody CandidateCommercialData candidateCommercialData) {		
			
		candidateCommercialDataRep.save(candidateCommercialData);
		return "saveSuccess";
		
	}
		
//AGGIORNA
		
	@PutMapping("updateCandidateCommercialData")
	public String updateCandidateCommercialData (@RequestBody CandidateCommercialData candidateCommercialData) {
		candidateCommercialDataRep.save(candidateCommercialData);
		return "updateSuccess";
		
	}
		
//ELIMINA
		
	@DeleteMapping ("deleteCandidateCommercialData/{idCandidateCommercialData}")	
	public String deleteCandidateCommercialData (@PathVariable (name = "idCandidateCommercialData") Integer idCandidateCommercialData) {
			
		candidateCommercialDataRep.deleteById(idCandidateCommercialData);
		return "deleteSuccess";
		
	}
		
//CERCA PER ID
		
	@GetMapping("findByIdCandidateCommercialData/{idCandidateCommercialData}")
	public CandidateCommercialData findByIdCandiidateCommercialData (@PathVariable(value = "idCandidateCommercialData") Integer idCandidateCommercialData){
			
		CandidateCommercialData candidateCommercialData = candidateCommercialDataRep.findById(idCandidateCommercialData).get();		
		return candidateCommercialData;
	}	
}
