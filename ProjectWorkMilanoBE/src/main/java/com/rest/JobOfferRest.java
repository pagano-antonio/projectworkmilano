package com.rest;


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

import com.dao.JobOfferRepository;
import com.model.JobOffer;

@RestController
@RequestMapping("JobOffer")
public class JobOfferRest {
	
	@Autowired
	private JobOfferRepository jobOfferRep;
	
//AGGIUNGI
	
	@PostMapping("addJobOffer")
	public String addJobOffer (@RequestBody JobOffer jobOffer) {		
			
		jobOfferRep.save(jobOffer);
		return "saveSuccess";
		
	}
		
//AGGIORNA
	
	@PutMapping("updateJobOffer")
	public String updateJobOffer (@RequestBody JobOffer jobOffer) {
			
		jobOfferRep.save(jobOffer);
		return "updateSuccess";
		
	}
		
//ELIMINA
		
	@DeleteMapping ("deleteJobOffer/{idJobOffer}")	
	public String deleteJobOffer (@PathVariable (name = "idJobOffer") Integer idJobOffer) {
			
		jobOfferRep.deleteById(idJobOffer);
		return "deleteSuccess";
		
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
				
			List <JobOffer> tmp = jobOfferRep.findTitleByMinRalAfterAndMaxRalBefore(minRal, maxRal);
			return tmp;
		}
		
//CERCA TRA RAL MINIMA E RAL MASSIMA

		@GetMapping("findJobOfferByIdContractType/{idContractType}")
		public JobOffer findByIdContractType(@PathVariable(value = "idContractType") int idContractType){
						
			JobOffer tmp = jobOfferRep.findByContractType_idContractType(idContractType);					
			return tmp;
		}
}



