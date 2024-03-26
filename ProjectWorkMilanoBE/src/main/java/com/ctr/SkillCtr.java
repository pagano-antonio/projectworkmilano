package com.ctr;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dao.SkillRepository;
import com.model.Skill;
import jakarta.servlet.http.HttpServletRequest;



@Controller
@RequestMapping ("/skill")
public class SkillCtr {
	
	@Autowired
	private SkillRepository skillRep;
	
///////// INSERIMENTO /////////
	
	
@GetMapping("/preInsertSkill")
public String preInsert(Model model) {

	return "preAddSkill";

}
@PostMapping("/preAddSkill")
public String inserisci(Model model,HttpServletRequest request,Skill skill) {

	skillRep.save(skill);

	return "addSkillSuccess";
}

///////// AGGIORNAMENTO /////////

@GetMapping("/updateSkillForm")
public String updateSkillForm(Model model, HttpServletRequest request, int idSkill) {
	
	Skill sList = skillRep.findById(idSkill).get();
	
	model.addAttribute("sList",sList);

	return "updateSkill";
}

@PostMapping("/updateSkill")
public String updateSkill(Model model,HttpServletRequest request,Skill skill) {

	skillRep.save(skill);

	return "updateSuccess";
}

///////// ELIMINA ////////

@GetMapping("/delete")
public String delete(Model model, @RequestParam int idSkill) {
    skillRep.deleteById(idSkill);
    return "deleteSuccess";
}

	
	//////////// RICERCA SKILL PER ID SKILLL ////////////////
	
	 @GetMapping ("/preRicercaSkillById")
	 
	    public String preRicercaSkillById(Model model) {
	
		 
	    	return "ricercaSkillById";
	    }
	
	
	@GetMapping("/ricercaSkillById")   
	public String ricercaSkillById(Model model, HttpServletRequest request, int idSkill) {
		
	Skill sList = skillRep.findById(idSkill).get();
	
		model.addAttribute("sList", sList);
		
		return "risultatiSkillById";

	    

	}
	
	////////////// RICERCA SKILL PER ID CANDIDATE ////////////////
	
	 @GetMapping ("/preRicercaSkillPerIdCandidate")
	    public String preRicercaSkillPerIdCandidate(Model model) {
		 
		 System.out.println("prefind ok");
		 
	    	return "ricercaSkillPerIdCandidate";
	    }
	
	
	@GetMapping("/ricercaSkillPerIdCandidate")   
	public String ricercaSkillPerIdCandidate(Model model, HttpServletRequest request, int idCandidate) {
		 System.out.println("find ok");
		List <Skill> sList = skillRep.findByCandidateSkills_candidate_idCandidate(idCandidate);
		model.addAttribute("sList", sList);
		
		return "risultatiSkillPerIdCandidate";

	    

	}

	//////// LEGGI/RICERCA ////////
	
	@GetMapping("/preInserimentoSkill")
	public String preInserimentoId(Model model) {


		return "Ok"; 

	} 


	@PostMapping("/ricercaPerIdSkill")

	public String ricercaPerIdSkill (Model model, int idSkill) {


		Skill skill = skillRep.findById(idSkill).get();

		model.addAttribute("Skill",skill);
	
		return "Ok";


	}
	

}
