package com.ctr;

import java.sql.Date;

import java.util.List;

import org.apache.el.stream.Optional;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.repository.CrudRepository;

import org.springframework.format.annotation.DateTimeFormat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CompanyClientRepository;
import com.dao.ContractTypeRepository;
import com.dao.JobOfferRepository;


import com.model.CompanyClient;
import com.model.ContractType;
import com.ctr.CompanyClientCtr;
import com.ctr.ContractTypeCtr;
import com.model.JobOffer;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/JobOfferCtr")
public class JobOfferCtr {	

	@Autowired
	private JobOfferRepository jobOfferRep;
    
 
    //METODO AGGIUNGI
	
   	@GetMapping("/preInsertJobOffer")
       public String preInsert(Model model){
              
   		return "preAddJobOffer";
   	}            
           
       @PostMapping("/preAddJobOffer")
       public String inserisci(Model model, HttpServletRequest request, JobOffer jobOffer) {
               
       	jobOfferRep.save(jobOffer);
       	
       	return "addJobOfferSuccess";
           
   	}
    
    //METODO AGGIORNA
       
       @GetMapping("/updateJobOfferForm")
       public String updateJobOfferForm(Model model, HttpServletRequest request, Integer idJobOffer) {
       	
       	JobOffer jobOffer =jobOfferRep.findById(idJobOffer).get();
       	
       	model.addAttribute("jobOffer",jobOffer);
       
       	return "updateJobOffer";
       }
       
       @PostMapping("/updateJobOffer")
      public String updateJobOffer(Model model, HttpServletRequest request, JobOffer jobOffer) {
       	
       	 jobOfferRep.save(jobOffer);
            return "updateSuccess";
            
       }
    
    //ELIMINA 
    
    @GetMapping("/delete")
    public String delete(Model model, HttpServletRequest request, Integer idJobOffer) {
    	
    	jobOfferRep.deleteById(idJobOffer);
        return "deleteSuccess";
        
    }
    
    //RICERCA PER ID 
    
    @GetMapping("/preInsertIdJobOffer")
    public String findByIdJobOffForm(Model model, HttpServletRequest request) {
    	
    	return "preFindJobOfferById";
    	
    }
        
    @PostMapping("/preFindJobOfferById")
    public String findByIdJobOffer(Model model, HttpServletRequest request, int idJobOffer) {
        List<JobOffer> jobOffers = jobOfferRep.findById(idJobOffer);
        if (jobOffers == null) {
            return "Error";
        } else {
            model.addAttribute("offerList", jobOffers);
            return "findJobOfferById";
        }
    }

    //RICERCA PER TITLE
    
	@GetMapping("/preInsertTitle")
    public String preInsertTitle() {
		
        return "preFindJobOfferByTitle";
    } 
	
	@PostMapping("/preFindJobOfferByTitle")
	public String findByTitle(Model model, String title) {

		List<JobOffer> jobOffers = jobOfferRep.findByTitle(title);
		
		if(jobOffers.isEmpty()) {
			return "Error";
		} else {
			model.addAttribute("offerList",jobOffers);
			return "findJobOfferByTitle";
		}
	}
	
    //RICERCA PER STARTDATE E ENDDATE
	
	@GetMapping("/preInsertStartDateAndEndDate")
	public String preInsertStartDateAndEndDate() {
		return "preFindJobOfferByStartDateAndEndDate";
	}
	
	@PostMapping("/preFindJobOfferByStartDateAndEndDate")
	public String findByStartDateAndEndDate(Model model, Date startDate,Date endDate) {
		
		List<JobOffer> jobOffers = jobOfferRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
		
		if(jobOffers.isEmpty()) {
			return "Error";
		} else {
			model.addAttribute("offerList",jobOffers);
			return "findJobOfferByStartDateAndEndDate";
		}
	}

	//RICERCA JOB OFFER PER SKILL
	
	@GetMapping("/preRicercaSkill")
    public String preRicercaSkill (Model model) {
    	return "ricercaJobOfferPerSkill";
    }
    
    @GetMapping("/ricercaJobOfferPerSkill")
	public String ricercaJobOfferPerSkill(Model model, @RequestParam int idSkill) {
    	
		List<JobOffer> jobOfferLista = jobOfferRep.findByJobOfferSkill_skill_idSkill(idSkill);
		
		if(jobOfferLista.isEmpty()) {
			return "Error";
		} else {
			model.addAttribute("jobOfferLista", jobOfferLista);
			return "risultatiRicercaJobOfferSkill";
		}
	}
    
    @GetMapping("/risultatiRicercaJobOfferSkill")

	public String risultatiRicercaJobOfferSkill(Model model, int idSkill) {

		List<JobOffer> jobOfferLista = jobOfferRep.findByJobOfferSkill_skill_idSkill(idSkill);

		jobOfferRep.saveAll(jobOfferLista);

		return "ok";
	}
    
    //RICERCA TRA RAL MINIMA E RAL MASSIMA
	
  	@GetMapping("/findJobOfferBetweenMinRalAndMaxRalForm")
  	public String findJobOfferBetweenMinRalAndMaxRalForm() {
  		return "findJobOfferBetweenMinRalAndMaxRalForm";
  	}
  	
  	@GetMapping("/findJobOfferBetweenMinRalAndMaxRal")
  	public String findJobOfferBetweenMinRalAndMaxRal(Model model, int minRal ,int maxRal) {
  		
  		List<JobOffer> jobOffers = jobOfferRep.findByMinRalGreaterThanEqualAndMaxRalGreaterThanEqual(minRal, maxRal);

  		System.out.println("PROVA");
  		model.addAttribute("offerList",jobOffers);

  		
  		if(jobOffers.isEmpty()) {
  			return "Error";
  		} else {
  	  		model.addAttribute("offerList",jobOffers);
  	  		return "findJobOfferBetweenMinRalAndMaxRal";
  		}
  	}
  	
    //RICERCA PER ID COMPANY CLIENT
	
  	@GetMapping("/preInsertIdCompanyClient")
  	public String preInsertIdCompanyClient() {
  		return "preFindJobOfferByIdCompanyClient";
  	}
  	
  	@GetMapping("/preFindJobOfferByIdCompanyClient")
  	public String findByIdCompanyClient(Model model, int idCompanyClient) {
  		
  		List<JobOffer> companyClient = jobOfferRep.findBycompanyClient_idCompanyClient(idCompanyClient);
  		
  		if(companyClient.isEmpty()) {
  			return "Error";
  		} else {
  	  		model.addAttribute("offerList",companyClient);
  	  		return "findJobOfferByIdCompanyClient";
  		}
  	}

//RICERCA PER ID CONTRACT TYPE
	
  	@GetMapping("/findJobOfferByIdContractTypeForm")
  	public String findJobOfferByIdContractTypeForm() {
  		return "findJobOfferByIdContractTypeForm";
  	}
  	
  	@GetMapping("/findJobOfferByIdContractType")
  	public String findJobOfferByIdContractType(Model model, int idContractType) {
  		
  		List <JobOffer> jobOffers = jobOfferRep.findByContractType_idContractType(idContractType);
  		
  		if(jobOffers.isEmpty()) {
  			return "Error";
  		} else {
  	  		model.addAttribute("offer",jobOffers);
  	  		return "findJobOfferByIdContractType";
  		}
  	//METODO FIND
  	} 		
  @GetMapping("/findJobOffer")
  	       public String findJobOffer(){
  	              
  	   		return "findJobOffer";
  	   	}  
  	
  	}

	
	
    




