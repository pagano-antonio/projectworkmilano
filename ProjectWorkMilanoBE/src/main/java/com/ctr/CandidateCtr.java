package com.ctr;


import java.util.ArrayList;

import java.math.BigInteger;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateRepository;
import com.model.Candidate;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping ("/candidate")
public class CandidateCtr {
	
	@Autowired
	private CandidateRepository candidateRep;
	

	
//METODO AGGIUNGI
	
	@GetMapping("/addCandidateForm")
    public String addCandidateForm(Model model,HttpServletRequest request){
           
		return "addCandidateForm";
		
	}            
        
    @PostMapping("/addCandidate")
    public String addCandidate(Model model, HttpServletRequest request, Candidate candidate) {
            
    	candidateRep.save(candidate);
        return "saveSuccess";
        
	}
    
 //METODO AGGIORNA
     
    @GetMapping("/updateCandidateForm")
    public String updateCandidateForm(Model model,HttpServletRequest request) {
    	           
    	return "updateCandidateForm";
    	
	}            
   
    @PostMapping("/updateCandidate")
    public String updateCandidate(Model model, HttpServletRequest request, Candidate candidate) {
    	
    	 candidateRep.save(candidate);
         return "updateSuccess";
         
    }
    
 //ELIMINA 
    @PostMapping("/delete")
    public String delete(Model model, HttpServletRequest request, int idCandidate) {
    	
    	candidateRep.deleteById(idCandidate);
        return "deleteSuccess";
        
    }
    
 //RICERCA PER ID 
    @GetMapping("/findByIdCandidateForm")
    public String findByIdCandidateForm(Model model, HttpServletRequest request) {
    	
    	return "findByIdCandidateForm";
    	
    }
    
    @PostMapping("/findByIdCandidate")
    public String findByIdCandidate(Model model, HttpServletRequest request, int idCandidate) {
    	
    	candidateRep.findById(idCandidate);
    	return "findByIdCandidate"; 
    	
    }

    //////////// RICERCA CANDIDATE PER CITTA' //////////////////
    
    @GetMapping("/preRicercaCitta")
    public String preRicercaCitta (Model model) {
    	return "ricercaCandidatePerCitta";
    }
    
    @GetMapping("/ricercaCandidatePerCitta")
	public String ricercaCandidatePerCitta(Model model, @RequestParam String city) {
    	System.out.println("ciao");
		List<Candidate> candidateLista =candidateRep.findByCity(city);
		
		model.addAttribute("candidateLista", candidateLista);
		return "risultatiRicercaCandidatePerCitta";
	}
    
   
    @GetMapping("/risultatiRicercaCandidatePerCitta")

	public String risultatiRicercaCandidatePerCitta(Model model, String city) {

		List<Candidate> candidateLista = candidateRep.findByCity(city);

		candidateRep.saveAll(candidateLista);

		return "candidateMessaggioAndatoABuonFine";
	}

//GO TO Read by SURNAME
    @GetMapping("/findCandidateBySurnameForm")
    public String findCandidateBySurnameForm() {
    	
    	return "findCandidateBySurname";
    }
    
//READ Candidate by Surname
    @GetMapping("/findCandidateBySurname")
    public String findCandidateBySurname (Model model, String surname) {
    	List<Candidate> candidateList = candidateRep.findBySurname(surname);
    	
    	if(candidateList != null && candidateList.size() > 0) {
    		model.addAttribute("candidateSurnamesResults", candidateList);
    		return "findByCandidateSurnameResults";
    	} else {
    		return "Error";
    	}
    }
    
//GO TO Read by PHONE
    @GetMapping("/findCandidateByPhoneForm")
    public String findCandidateByPhoneForm () {
    	
    	return "findCandidateByPhone";
    }


//READ Candidate by Phone
    @GetMapping("/findCandidateByPhone")
    public String findCandidateByPhone (Model model, BigInteger phone) {
    	List<Candidate> candidatesList = candidateRep.findByPhone(phone);
    	
    	if(candidatesList != null && candidatesList.size() > 0) {
    		model.addAttribute("candidatesPhonesResults", candidatesList);
    		return "findByCandidatePhonesResults";
    	} else {
    		return "Error";
    	}
    }
}
