package com.rest;



import java.util.List;





import java.math.BigInteger;
import java.util.List;



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

import com.model.Candidate;

@RestController
@RequestMapping("Candidate")
public class CandidateRest {

	@Autowired
	private CandidateRepository candidateRep;
	
	
//AGGIUNGI
		
	@PostMapping("addCandidate")
	public String addCandidate (@RequestBody Candidate candidate) {		
			
		candidateRep.save(candidate);
		return "saveSuccess";
		
	}
		
//AGGIORNA
		
	@PutMapping("updateCandidate")
	public String updateJobInterview (@RequestBody Candidate candidate) {
			
		candidateRep.save(candidate);
		return "updateSuccess";
		
	}
		
//ELIMINA
		
	@DeleteMapping ("deleteCandidate/{idCandidate}")	
	public String deleteCandidate (@PathVariable (name = "idCandidate") Integer idCandidate) {
			
		candidateRep.deleteById(idCandidate);
		return "deleteSuccess";
		
	}
		
//CERCA PER ID
		
	@GetMapping("findByIdCandidate/{idCandidate}")
	public Candidate findByIdCandiidate (@PathVariable(value = "idCandidate") Integer idCandidate){
			
		Candidate candidate = candidateRep.findById(idCandidate).get();		
		return candidate;
		

	}	
	
	 //////////// RICERCA CANDIDATE PER CITTA' //////////////////
	
	@GetMapping("ricercaByCity/{city}")
	public List<Candidate> ricercaByCity(@PathVariable("city") String city) {
					

	List<Candidate> candidate = (List<Candidate>)candidateRep.findByCity(city);

	return candidate;

	}
	
//READ BY SURNAME
	
	@GetMapping("findCandidateBySurname/{surname}")
	public List<Candidate> findBySurname (@PathVariable(value="surname") String surname) {
		
		return candidateRep.findBySurname(surname);
		
		//localhost:8080/Candidate/findCandidateBySurname/Rubino
	}
	
//READ BY PHONE
	
	@GetMapping("findCandidateByPhone/{phone}")
	public String findCandidateByPhone (@PathVariable(value="phone") BigInteger phone){
		
		List<Candidate> candidate = candidateRep.findByPhone(phone);
		
		return candidate.toString();
		
		//localhost:8080/Candidate/findCandidateByPhone/3405678

	}
	
//READ BY ID EDUCATION DEGREE TYPE
	
	@GetMapping("findCandidateByIdEducationDegreeType/{idEducationDegreeType}")
	public List<Candidate> findByEducations_EducationDegreeType_IdEducationDegreeType (Integer idEducationDegreeType){
		
		return candidateRep.findByEducations_EducationDegreeType_IdEducationDegreeType(idEducationDegreeType);
		//non funziona come dovrebbe...
	}
}
