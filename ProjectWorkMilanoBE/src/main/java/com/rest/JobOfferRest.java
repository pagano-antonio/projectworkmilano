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
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobOfferRepository;
import com.model.JobOffer;

@CrossOrigin
@RestController
@RequestMapping("JobOffer")
public class JobOfferRest {
	
	@Autowired
	private JobOfferRepository jobOfferRep;
	
//AGGIUNGI
	
	@PostMapping("addJobOffer")
	public ResponseEntity<String> addJobOffer (@RequestBody JobOffer jobOffer) {		
			
		jobOfferRep.save(jobOffer);
		return ResponseEntity.ok("Save Success");
		
	}
		
//AGGIORNA
	
	@PutMapping("updateJobOffer")
	public ResponseEntity<String> updateJobOffer (@RequestBody JobOffer jobOffer) {
			
		jobOfferRep.save(jobOffer);
		return ResponseEntity.ok("Update Success");
		
	}
		
//ELIMINA
		
	@DeleteMapping ("deleteJobOffer/{idJobOffer}")	
	public ResponseEntity<String> deleteJobOffer (@PathVariable (name = "idJobOffer") Integer idJobOffer) {
			
		jobOfferRep.deleteById(idJobOffer);
		return ResponseEntity.ok("Delete Success");
		
	}
		
//CERCA PER ID
		
	@GetMapping("findByIdJobOffer/{idJobOffer}")
	public JobOffer findByIdJobOffer (@PathVariable(value = "idJobOffer") Integer idJobOffer){
			
		JobOffer objectJO = jobOfferRep.findById(idJobOffer).get();		
		return objectJO;
		
	}
	
//CERCA TRA RAL MINIMA E RAL MASSIMA

		@GetMapping("findJobOfferBetweenMinAndMaxRal/{minRal}/{maxRal}")
		public List <JobOffer> findJBBetweenMinRalAndMaxRal(@PathVariable(value = "minRal") Integer minRal,@PathVariable(value = "maxRal") Integer maxRal){
				
			List <JobOffer> tmp = jobOfferRep.findByMinRalGreaterThanEqualAndMaxRalGreaterThanEqual(minRal, maxRal);
			return tmp;
		}
		
//CERCA PER ID CONTRACT TYPE

		@GetMapping("findJobOfferByIdContractType/{idContractType}")
		public List <JobOffer> findByIdContractType(@PathVariable(value = "idContractType") int idContractType){
						
			List <JobOffer> tmp = jobOfferRep.findByContractType_idContractType(idContractType);					
			return tmp;
		}
}



