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
	
	@Autowired
    private CompanyClientRepository companyClientRep;

    @Autowired
    private ContractTypeRepository contractTypeRep;
    
    
	
//METODO AGGIUNGI
	
	@GetMapping("/addJobOfferForm")
    public String addJobOffForm(Model model,HttpServletRequest request){
           
		return "addJobOfferForm";
		
	}            
        
    @PostMapping("/addJobOffer")
    public String addJobOffer(Model model, HttpServletRequest request, JobOffer jobOffer) {
            
    	jobOfferRep.save(jobOffer);
        return "saveSuccess";
        
	}
    
 //METODO AGGIORNA
     
    @GetMapping("/updateJobOfferForm")
    public String updateJobOfferForm(Model model, HttpServletRequest request, JobOffer jobOffer) {
        try {
            int idCompanyClient = Integer.parseInt(request.getParameter("idCompanyClient"));
            int idContractType = Integer.parseInt(request.getParameter("idContractType"));

            CompanyClient companyClient = companyClientRep.findByIdCompanyClient(idCompanyClient);
            ContractType contractType = contractTypeRep.findByIdContractType(idContractType);

            if (companyClient != null && contractType != null) {
                jobOffer.setCompanyClient(companyClient);
                jobOffer.setContractType(contractType);

                jobOfferRep.save(jobOffer);

                return "updateSuccess";
            } else {
                return "Error";
            }
        } catch (NumberFormatException e) {
          
            return "Error";
        } catch (Exception e) {
            
            e.printStackTrace(); 
            return "Error";
        }
    }

	         
   
    @GetMapping("/updateJobOffer")
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
    
    @GetMapping("/findByIdJobOfferForm")
    public String findByIdJobOffForm(Model model, HttpServletRequest request) {
    	
    	return "findByIdJobOfferForm";
    	
    }
    
    @PostMapping("/findByIdJobOffer")
    public String findByIdJobOffer(Model model, HttpServletRequest request, Integer idJobOffer) {
    	
    	jobOfferRep.findById(idJobOffer);
    	return "findByIdJobOffer"; 
    	
    }
    
 //RICERCA PER TITLE
    
	@GetMapping("/preInsertTitle")
    public String preInsertTitle() {
		
        return "preFindJobOfferByTitle";
    } 
	
	@PostMapping("/preFindJobOfferByTitle")
	public String findByTitle(Model model, String title) {

		List<JobOffer> jobOffers = jobOfferRep.findByTitle(title);

		model.addAttribute("offerList",jobOffers);

		return "findJobOfferByTitle";
	}
	
  //RICERCA PER STARTDATE E ENDDATE
	
	@GetMapping("/preInsertStartDateAndEndDate")
	public String preInsertStartDateAndEndDate() {
		return "preFindJobOfferByStartDateAndEndDate";
	}
	
	@PostMapping("/preFindJobOfferByStartDateAndEndDate")
	public String findByStartDateAndEndDate(Model model, Date startDate,Date endDate) {
		
		List<JobOffer> jobOffers = jobOfferRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
		System.out.println("PROVA");
		model.addAttribute("offerList",jobOffers);
		
		return "findJobOfferByStartDateAndEndDate";
	}

	//////////// RICERCA JOB OFFER PER SKILL ////////////////
	
	@GetMapping("/preRicercaSkill")
    public String preRicercaSkill (Model model) {
    	return "ricercaJobOfferPerSkill";
    }
    
    @GetMapping("/ricercaJobOfferPerSkill")
	public String ricercaJobOfferPerSkill(Model model, @RequestParam int idSkill) {
    	
		List<JobOffer> jobOfferLista = jobOfferRep.findByJobOfferSkill_skill_idSkill(idSkill);
		
		model.addAttribute("jobOfferLista", jobOfferLista);
		return "risultatiRicercaJobOfferSkill";
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
  		
  		List<JobOffer> jobOffers = jobOfferRep.findTitleByMinRalAfterAndMaxRalBefore(minRal, maxRal);
  		System.out.println("PROVA");
  		model.addAttribute("offerList",jobOffers);
  		
  		return "findJobOfferBetweenMinRalAndMaxRal";
  	}
}
	
	
    




