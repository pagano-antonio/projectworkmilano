package com.ctr;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dao.CandidateCommercialDataRepository;
import com.dao.CandidateRepository;
import com.model.Candidate;
import com.model.CandidateCommercialData;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping ("/CandidateCommercialDataCtr")
public class CandidateCommercialDataCtr {
	
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
	@Autowired
	private CandidateRepository candidateRep;
	
//HOME
	
	@GetMapping("/Home")
	public String goHome() {
		return "Home";
	}
	
//METODO AGGIUNGI
	
	@GetMapping("/addCandidateCommercialDataForm")
    public String addCandidateCommercialDataForm(Model model,HttpServletRequest request){ //se ci arrivo direttamente dalla pagina candidato devo portarmi dietro l'id in ingresso
		List <Candidate> candidateList = candidateRep.findAll();
        model.addAttribute("candidates", candidateList); //se voglio inviare al form la lista di candidati da cui scegliere
		return "addCandidateCommercialDataForm";
	}            
        
    @PostMapping("/addCandidateCommercialData")
    public String addCandidate(Model model, HttpServletRequest request, CandidateCommercialData candidateCommercialData) {
    	candidateCommercialDataRep.save(candidateCommercialData);
        return "saveSuccess";
        
	}
    
 //METODO AGGIORNA
     
    @GetMapping("/updateCandidateCommercialDataForm")
    public String updateCandidateCommercialDataForm(Model model,HttpServletRequest request) {    	        
    	return "updateCandidateCommercialDataForm";
    	
	}            
   
    @PostMapping("/updateCandidateCommercialData")
    public String updateCandidateCommercialData(Model model, HttpServletRequest request, CandidateCommercialData candidateCommercialData) {
    	candidateCommercialDataRep.save(candidateCommercialData);
         return "updateSuccess";
         
    }
    
 //ELIMINA 
    @PostMapping("/delete")
    public String delete(Model model, HttpServletRequest request, Integer idCandidateCommercialData) {
    	candidateCommercialDataRep.deleteById(idCandidateCommercialData);
        return "deleteSuccess";
        
    }
    
 //RICERCA PER ID 
    @GetMapping("/findByIdCandidateCommercialDataForm")
    public String findByIdCandidateCommercialDataForm(Model model, HttpServletRequest request) {
    	
    	return "findByIdCandidateCommercialDataForm";
    	
    }
    
    @PostMapping("/findByIdCandidateCommercialData")
    public String findByIdCandidateCommercialData(Model model, HttpServletRequest request, Integer idCandidateCommercialData) {
    	candidateCommercialDataRep.findById(idCandidateCommercialData);
    	return "findByIdCandidateCommercialData"; 
    	
    }
  //RICERCA PER ID CANDIDATE
    @GetMapping("/preFindByIdCandidate")
    public String findByIdCandidate() {
    	
    	return "preFindByIdCandidate";
    	
    }
    
    @PostMapping("/findByIdCandidate")
    public String findByIdCandidate(Model model, Candidate Candidate) {
    	
    	Optional<CandidateCommercialData> idC = candidateCommercialDataRep.findByCandidate(Candidate);
    
		if (idC.isPresent()) {
			CandidateCommercialData idCa = idC.get();
			model.addAttribute("CandidateCommercialData", idCa);

			return "findByIdCandidate";
		} else {
			return "Error";
		}	
    }

}
