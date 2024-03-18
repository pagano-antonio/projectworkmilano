package com.ctr;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobOfferRepository;
import com.model.JobOffer;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/JobOfferCtr")
public class JobOfferCtr {	

	@Autowired
	private JobOfferRepository jobOfferRep;
	

	
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
    public String updateJobOffForm(Model model,HttpServletRequest request) {
    	           
    	return "updateJobOfferForm";
    	    	
	}            
   
    @PostMapping("/updateJobOffer")
    public String updateJobOffer(Model model, HttpServletRequest request, JobOffer jobOffer) {
    	
    	 jobOfferRep.save(jobOffer);
         return "updateSuccess";
         
    }
    
 //ELIMINA 
    
    @PostMapping("/delete")
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

    
}



