package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateRepository;
import com.dao.CandidateSkillRepository;
import com.model.Candidate;
import com.model.CandidateSkill;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping ("/CandidateSkillCtr")
public class CandidateSkillCtr {
	
	@Autowired
	private CandidateSkillRepository candidateSkillRep;
	
//HOME
	
	@GetMapping("/home")
	public String goHome(Model model,HttpServletRequest request) {
		return "home";
	}
	
//METODO AGGIUNGI
	
	@GetMapping("/addCandidateSkillForm")
    public String addCandidateSkillForm(Model model,HttpServletRequest request){    
		return "addCandidateSkillForm";
		
	}            
        
    @PostMapping("/addCandidateSkill")
    public String addCandidateSkill(Model model, HttpServletRequest request, CandidateSkill candidateSkill) {
    	candidateSkillRep.save(candidateSkill);
        return "saveSuccess";
        
	}
    
 //METODO AGGIORNA
     
    @GetMapping("/updateCandidateSkillForm")
    public String updateCandidateSkillForm(Model model,HttpServletRequest request) { 	       
    	return "updateCandidateSkillForm";
    	
	}            
   
    @PostMapping("/updateCandidateSkill")
    public String updateCandidateSkill(Model model, HttpServletRequest request, CandidateSkill candidateSkill) {
    	
    	candidateSkillRep.save(candidateSkill);
         return "updateSuccess";
         
    }
    
 //ELIMINA 
    @PostMapping("/delete")
    public String delete(Model model, HttpServletRequest request, Integer idCandidateSkill) {
    	candidateSkillRep.deleteById(idCandidateSkill);
        return "deleteSuccess";
        
    }
    
 //RICERCA PER ID 
    @GetMapping("/findByIdCandidateSkillForm")
    public String findByIdCandidateSkillForm(Model model, HttpServletRequest request) {
    	return "findByIdCandidateSkillForm";
    }
    
    @PostMapping("/findByIdCandidateSkill")
    public String findByIdCandidate(Model model, HttpServletRequest request, Integer idCandidateSkill) {
    	candidateSkillRep.findById(idCandidateSkill);
    	return "findByIdCandidateSkill";  	
    }

}
