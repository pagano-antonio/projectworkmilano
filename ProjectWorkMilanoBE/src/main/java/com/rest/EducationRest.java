package com.rest;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dao.EducationRepository;
import com.model.Candidate;
import com.model.Education;
import com.model.JobInterview;

@CrossOrigin
@RestController
@RequestMapping("Education")
public class EducationRest {
	
	@Autowired
	private EducationRepository educationRep;
	
	//CRUD stands for Create Read Update Delete
	
		//Create
		@PostMapping("addEducation")
		public ResponseEntity<String> addEducation (@RequestBody Education ed) {
			
			Education education = educationRep.save(ed);
			
			System.out.println("Data successfully added to DB.");
			
			return ResponseEntity.ok("Data successfully added to DB.");
			
			//localhost:8080/Education/addEducation
			
		}
		
		//Read ID
		@GetMapping("findEducationById")
		public Education findByIdEducation (@RequestParam(value="idEducation") int idEducation) {
			
			Education education = educationRep.findByIdEducation(idEducation);
			
			return education;
			
			//localhost:8080/Education/findEducationById?idEducation=1
		}
		
		//Read by ID CANDIDATE
		@GetMapping("/findEducationByIdCandidate/{idCandidate}")
		public List<Education> findEducationByCandidateId(@PathVariable("idCandidate") int idCandidate) {
			/*
			 * Dal momento che questo metodo nel repository prende in ingresso Candidate ma
			 * a me serve l'ID ho bisogno di creare un candidato da cui estrapolare l'ID.
			 */
			Candidate candidate = new Candidate();
			candidate.setIdCandidate(idCandidate);
			List<Education> education = educationRep.findByCandidate(candidate);
			return education;
			
			//localhost:8080/Education/findEducationByIdCandidate/1
		}
		
		//Update
		@PutMapping("updateEducation")
		public ResponseEntity<String> updateEducation (@RequestBody Education ed) {
			
			educationRep.save(ed);
			
			System.out.println("DB Update successful");
			
			return ResponseEntity.ok("DB Update successful");
			
			//localhost:8080/Education/updateEducation
		}
		
		//Delete
		@DeleteMapping("deleteEducation")
		public ResponseEntity<String> deleteEducation (@RequestParam(value="idEducation") int idEducation) {
			
			educationRep.deleteById(idEducation);
			
			return ResponseEntity.ok("Education successfully deleted from DB.");
			
			//localhost:8080/Education/deleteEducation?idEducation=1
		}

}
