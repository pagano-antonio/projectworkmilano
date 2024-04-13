package com.rest;



import java.util.List;







import java.math.BigInteger;



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

import com.dao.CandidateRepository;

import com.model.Candidate;

@CrossOrigin
@RestController
@RequestMapping("Candidate")
public class CandidateRest {

	@Autowired
	private CandidateRepository candidateRep;
	
	
	//AGGIUNGI
		
	@PostMapping("addCandidate")
	public ResponseEntity<String> addCandidate (@RequestBody Candidate candidate) {		
		
		System.out.println("Candidato in ingresso ADD Candidate" + candidate);
		candidateRep.save(candidate);
		return ResponseEntity.ok("Save Success");
		
	}
		
	//AGGIORNA
		
	@PutMapping("updateCandidate")
	public ResponseEntity<String> updateCandidate (@RequestBody Candidate candidate) {
			
		candidateRep.save(candidate);
		return ResponseEntity.ok("Update successful");
		
	}
		
	//ELIMINA
		
	@DeleteMapping ("deleteCandidate/{idCandidate}")	
	public ResponseEntity<String> deleteCandidate (@PathVariable (name = "idCandidate") Integer idCandidate) {
			
		candidateRep.deleteById(idCandidate);
		return ResponseEntity.ok("Delete Success");
		
	}
		
	//CERCA PER ID
		
	@GetMapping("findByIdCandidate/{idCandidate}")
	public Candidate findByIdCandiidate (@PathVariable(value = "idCandidate") int idCandidate){
			
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
	public List<Candidate> findCandidateByPhone (@PathVariable(value="phone") BigInteger phone){
		
		List<Candidate> candidate = candidateRep.findByPhone(phone);
		return candidate;
		
		//localhost:8080/Candidate/findCandidateByPhone/3405678

	}
	
	//READ BY ID EDUCATION DEGREE TYPE
	
	@GetMapping("findCandidateByIdEducationDegreeType/{idEducationDegreeType}")
	public List<Candidate> findByEducations_EducationDegreeType_IdEducationDegreeType (@PathVariable(value="idEducationDegreeType")Integer idEducationDegreeType){
		
		return candidateRep.findByEducations_EducationDegreeType_IdEducationDegreeType(idEducationDegreeType);
		//localhost:8080/Candidate/findCandidateByIdEducationDegreeType/1
	}
	
	//READ BY SKILLS
	
	@GetMapping("findCandidateBySkill/{title}")
	public List<Candidate> findCandidateBySkill (@PathVariable(value="title") String title){
		
		return candidateRep.findByCandidateSkills_Skill_Title(title);
		//localhost:8080/Candidate/findCandidateBySkill/agile
	}
	
	//FIND ALL
	@GetMapping("findAllCandidates")
    public List<Candidate> findAllCandidates() {
        return candidateRep.findAll();
    }
	
	//READ BY COMPANY
	@GetMapping("findCandidateByCompany/{company}")
	public List<Candidate> findCandidateByCompany(@PathVariable(value="company") String company){
		
		return candidateRep.findByWorkExperiences_Company(company);
		//localhost:8080/Candidate/findCandidateByCompany/Accenture
	}
	
	//READ BY STATE JOB INTERVIEW
	@GetMapping("findCandidateByStateJobInterview/{idStateJobInterview}")
	public List<Candidate> findCandidateByStateJobInterview(@PathVariable(value="idStateJobInterview") int idStateJobInterview){
		
		return candidateRep.findByJobInterview_StateJobInterview_idStateJobInterview(idStateJobInterview);
		//localhost:8080/Candidate/findCandidateByStateJobInterview/1
	}
	
	//READ BY OUTCOME
	@GetMapping("findCandidateByOutcome/{outcome}")
	public List<Candidate> findCandidateByOutcome(@PathVariable(value="outcome") int outcome){
		
		return candidateRep.findByJobInterview_outcome(outcome);
		//localhost:8080/Candidate/findCandidateByOutcome/28
	}
}
