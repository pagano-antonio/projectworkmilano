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

import com.dao.CandidateRepository;
import com.dao.CandidateSkillRepository;
import com.model.Candidate;
import com.model.CandidateSkill;

@RestController
@RequestMapping("/CandidateSkill")
public class CandidateSkillRest {

	@Autowired
	private CandidateSkillRepository candidateSkillRep;
	
	
//AGGIUNGI
		
	@PostMapping("addCandidateSkill")
	public String addCandidateSkill (@RequestBody CandidateSkill candidateSkill) {		
			
		candidateSkillRep.save(candidateSkill);
		return "saveSuccess";
		
	}
		
//AGGIORNA
		
	@PutMapping("updateCandidateSkill")
	public String updateCandidateSkill (@RequestBody CandidateSkill candidateSkill) {
			
		candidateSkillRep.save(candidateSkill);
		return "updateSuccess";
		
	}
		
//ELIMINA
		
	@DeleteMapping ("deleteCandidateSkill/{idCandidateSkill}")	
	public String deleteCandidateSkill (@PathVariable (name = "idCandidateSkill") Integer idCandidateSkill) {
			
		candidateSkillRep.deleteById(idCandidateSkill);
		return "deleteSuccess";
		
	}
		
//CERCA PER ID
		
	@GetMapping("findByIdCandidateSkill/{idCandidateSkill}")
	public CandidateSkill findByIdCandiidateSkill (@PathVariable(value = "idCandidateSkill") Integer idCandidateSkill){
		CandidateSkill candidateSkill = candidateSkillRep.findById(idCandidateSkill).get();		
		return candidateSkill;
		
	}	
}
