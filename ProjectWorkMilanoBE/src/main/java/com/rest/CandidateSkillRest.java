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

import com.dao.CandidateSkillRepository;
import com.model.CandidateSkill;

@CrossOrigin
@RestController
@RequestMapping("/CandidateSkill")
public class CandidateSkillRest {

	@Autowired
	private CandidateSkillRepository candidateSkillRep;
	
	
	//AGGIUNGI
		
	@PostMapping("addCandidateSkill")
	public ResponseEntity<String> addCandidateSkill (@RequestBody CandidateSkill candidateSkill) {		
			
		candidateSkillRep.save(candidateSkill);
		return ResponseEntity.ok("Save Success");
		
	}
		
	//AGGIORNA
		
	@PutMapping("updateCandidateSkill")
	public ResponseEntity<String> updateCandidateSkill (@RequestBody CandidateSkill candidateSkill) {
			
		candidateSkillRep.save(candidateSkill);
		return ResponseEntity.ok("Update Success");
		
	}
		
	//ELIMINA
		
	@DeleteMapping ("deleteCandidateSkill/{idCandidateSkill}")	
	public ResponseEntity<String> deleteCandidateSkill (@PathVariable (name = "idCandidateSkill") Integer idCandidateSkill) {
			
		candidateSkillRep.deleteById(idCandidateSkill);
		return ResponseEntity.ok("Delete Success");
		
	}
		
	//CERCA PER ID
		
	@GetMapping("findByIdCandidateSkill/{idCandidateSkill}")
	public CandidateSkill findByIdCandiidateSkill (@PathVariable(value = "idCandidateSkill") Integer idCandidateSkill){
		CandidateSkill candidateSkill = candidateSkillRep.findById(idCandidateSkill).get();		
		return candidateSkill;
		
	}	
}
