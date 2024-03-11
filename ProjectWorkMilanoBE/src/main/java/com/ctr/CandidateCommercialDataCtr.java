package com.ctr;

import java.util.List;
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
	private CandidateRepository candidateRep;
	
//HOME
	
	@GetMapping("/Home")
	public String Home() {
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
    @GetMapping("/preFindCCDataByIdCandidate")
    public String preFindCCDataByIdCandidate() {
    	
    	System.out.println("prefindccdata ok");
    	
    	return "preFindCCDataByIdCandidate";
    	
    }
    
    @PostMapping("/findCCDataByIdCandidate")
    public String findCCDataByIdCandidate(Model model, Candidate Candidate) {
    	
    	System.out.println("findccdata ok"+Candidate.getIdCandidate());
    	
    	CandidateCommercialData idC = candidateCommercialDataRep.findByCandidate(Candidate).orElse(null);
    	
    	System.out.println(idC.getIdCandidateCommercial());
    	
		if (idC!=null) {
			
			System.out.println("findccdata ok"+Candidate.getIdCandidate());					
			
			model.addAttribute("LISTA", idC);

			return "findCCDataByIdCandidate";
		} else {
			return "Error";
		}	
    }

}
