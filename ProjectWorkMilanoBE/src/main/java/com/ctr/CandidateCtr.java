package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateRepository;
import com.model.Candidate;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping
public class CandidateCtr {
	
	@Autowired
	private CandidateRepository candidateRep;
	
//HOME
	
	@GetMapping("/home")
	public String goHome(Model model,HttpServletRequest request) {
		
		return "home";
		
	}
	
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
    public String delete(Model model, HttpServletRequest request, Integer idCandidate) {
    	
    	candidateRep.deleteById(idCandidate);
        return "deleteSuccess";
        
    }
    
 //RICERCA PER ID 
    @GetMapping("/findByIdCandidateForm")
    public String findByIdCandidateForm(Model model, HttpServletRequest request) {
    	
    	return "findByIdCandidateForm";
    	
    }
    
    @PostMapping("/findByIdCandidate")
    public String findByIdCandidate(Model model, HttpServletRequest request, Integer idCandidate) {
    	
    	candidateRep.findById(idCandidate);
    	return "findByIdCandidate"; 
    	
    }

}
