package com.ctr;

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
import com.dao.EducationDegreeTypeRepository;
import com.model.Candidate;
import com.model.EducationDegreeType;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping ("/candidate")
public class CandidateCtr {
	
	@Autowired
	private CandidateRepository candidateRep;
	@Autowired
	private EducationDegreeTypeRepository edtRep;

//////////// FIND PER LA HOME /////////
	@GetMapping("/find")
	
	public String find (Model model, HttpServletRequest request){
        return "find";
    }  

//METODO AGGIUNGI
	
	 @GetMapping("/preAddCandidateForm")
	    public String addCandidateForm(Model model, HttpServletRequest request){
	        return "addCandidate";
	    }            

	    @PostMapping("/addCandidate")
	    public String addCandidate(Model model, HttpServletRequest request, Candidate candidate) {
	    	candidateRep.save(candidate);
	    	
	    	
	        List<Candidate> cList = candidateRep.findAll();

	       
	        model.addAttribute("LISTAc", cList);
	        return "ListaCandidateSimona";
	        
		}
 
    //////////////////// UPDATE CANDIDATE ///////////////////

    
    @GetMapping("/updateCandidateForm")
    public String updateCandidateForm(Model model, int idCandidate) {
        Candidate cdt = candidateRep.findById(idCandidate).get();
        
        if (cdt != null) {
       
        model.addAttribute("candidate", cdt);
        
        return "updateCandidate";
    }
        return "Error";
    }

    @PostMapping("/updateCandidate1")
    public String updateCandidate(Candidate candidate) {
   
        candidateRep.save(candidate);
  
        return "updateSuccess";
    }
    
    
    
 //ELIMINA 
    @GetMapping("/delete")
    public String delete( int idCandidate) {
    	
    	candidateRep.deleteById(idCandidate);
        return "deleteSuccess";
        
    }
    
 //RICERCA PER ID 
    @GetMapping("/findByIdCandidateForm")
    public String findByIdCandidateForm(Model model, HttpServletRequest request) {
    	
    	return "findByIdCandidateForm";
    	
    }
    
    @PostMapping("/findCandidateById")
    public String findByIdCandidate(Model model, HttpServletRequest request, int idCandidate) {
    	
    	Candidate candidate=candidateRep.findById(idCandidate).get();
    	if (candidate != null) {
    	 model.addAttribute("candidate", candidate);
    	return "findCandidateById"; 
    	} else {
            return "Error"; 
        }
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
	@GetMapping("/preFindCandidateBySurnameForm")
	public String findCandidateBySurnameForm() {

		return "findCandidateBySurnameForm";
	}

//READ Candidate by Surname
	@GetMapping("/findCandidateBySurname")
	public String findCandidateBySurname(Model model, String surname) {
		List<Candidate> candidateList = candidateRep.findBySurname(surname);

		if (candidateList != null && candidateList.size() > 0) {
			model.addAttribute("candidateSurnamesResults", candidateList);
			return "findCandidateBySurnameResults";
		} else {
			return "Error";
		}
	}

//GO TO Read by PHONE
	@GetMapping("/preFindCandidateByPhoneForm")
	public String findCandidateByPhoneForm() {

		return "findCandidateByPhoneForm";
	}

//READ Candidate by Phone
	@GetMapping("/findCandidateByPhone")
	public String findCandidateByPhone(Model model, BigInteger phone) {
		List<Candidate> candidatesList = candidateRep.findByPhone(phone);

		if (candidatesList != null && candidatesList.size() > 0) {
			model.addAttribute("candidatesPhonesResults", candidatesList);
			return "findByCandidatePhonesResults";
		} else {
			return "Error";
		}
	}

//GO TO READ Candidate by Education Degree Type
	@GetMapping("/preFindCandidateByEDTForm")
	public String preFindCandidateByEDTForm(Model model) {
		// Education Degree Type is ideally a fixed list. Also, it would be
		// uncomfortable to find the
		// elements inserting a number. That is why the user will see a select section
		// with the EDT
		// instead of their IDs
		List<EducationDegreeType> edtList = edtRep.findAll();
		model.addAttribute("EDTList", edtList);
		return "findCandidateByEDTForm";
	}

//READ Candidate by Education Degree Type
	@GetMapping("/findCandidateByEDT")
	public String findCandidateByEDT(Model model, Integer idEducationDegreeType) {
		List<Candidate> candidatesList = candidateRep.findByEducations_EducationDegreeType_IdEducationDegreeType(idEducationDegreeType);
		
		if(candidatesList != null && candidatesList.size() > 0) {
			List<EducationDegreeType> edtList = edtRep.findAll();
			model.addAttribute("EDTList", edtList);
			model.addAttribute("candidatesEDTResults", candidatesList);
			return "findCandidateByEDTResults";
		} else {
			return "Error";
		}
	}
    
    //////// RICERCA CANDIDATO CHE HA LAVORATO IN UNA CERTA COMPANY //////////
    @GetMapping ("/preRicercaCandidatoPerCompagnia")
    public String preRicercaCandidatoPerCompagnia(Model model) {
    	return "ricercaCandidatoPerCompagnia";
    }
    	
    	@GetMapping("/ricercaCandidatoPerCompagnia")
    public String ricercaCandidatoPerCompagnia(Model model, @RequestParam String company) {
    	List<Candidate> candidateLista =candidateRep.findByWorkExperiences_Company(company);
    	model.addAttribute("candidateLista", candidateLista);
		return "risultatiRicercaCandidatoPerCompagnia" ;
    }
    	
    	
    	/////////// RICERCA CANDIDATE PER JOB INTERVIEW //////////////
    	
    	@GetMapping ("/preRicercaCandidatoPerStateJobInterview")
    	public String preRicercaCandidatoPerStateJobInterview(Model model) {
    		return "ricercaCandidatoPerStateJobInterview" ;
    		
    	}
    	
    	@GetMapping("/ricercaCandidatoPerStateJobInterview")
    	 public String ricercaCandidatoPerStateJobInterview(Model model, @RequestParam int idStateJobInterview) {
    		List<Candidate> candidateLista =candidateRep.findByJobInterview_StateJobInterview_idStateJobInterview(idStateJobInterview);
        	model.addAttribute("candidateLista", candidateLista);
    		return "RisultatiRicercaCandidatoPerStateJobInterview" ;
    		
    	}
   
    	
    //////////// RICERCA CANDIDATE PER OUTCOME ////////////////
    	
    	@GetMapping ("/preRicercaCandidatoPerOutcome")
    	public String preRicercaCandidatoPerOutcome(Model model) {
    		return "ricercaCandidatoPerOutcome" ;
    		
    	}
    	
    	@PostMapping("/ricercaCandidatoPerOutcome")
    	 public String ricercaCandidatoPerOutcome(Model model, @RequestParam int outcome) {
    		List<Candidate> candidateLista =candidateRep.findByJobInterview_outcome(outcome);
        	model.addAttribute("candidateLista", candidateLista);
    		return "RisultatiRicercaCandidatoPerOutcome" ;
    		
    	}
    //GO TO Read by SKILL
        @GetMapping("/findCandidateBySkillForm")
        public String findCandidateBySkillForm () {
        	
        	return "findCandidateBySkillForm";
        }

    //READ Candidate by SKILL
        @GetMapping("/findCandidateBySkill")   
        public String findCandidateBySkill(Model model,HttpServletRequest request, String title) {
        	 System.out.println("sono entrato nel metodo");
        	List<Candidate> candidatesBySkill = candidateRep.findByCandidateSkills_Skill_Title(title);    
        	
        	System.out.println(candidatesBySkill.size());
        	if(candidatesBySkill.size()> 0) {
        		System.out.println("sono nell'if");
        		model.addAttribute("candidatesBySkill", candidatesBySkill);
        		return "findCandidateBySkill";
        	} else {
        		return "Error";
        	}
        } 

}
