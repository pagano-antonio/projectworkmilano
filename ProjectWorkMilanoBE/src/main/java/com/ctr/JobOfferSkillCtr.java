package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.JobOfferSkillRepository;
import com.model.JobOfferSkill;


import jakarta.servlet.http.HttpServletRequest;


@Controller
public class JobOfferSkillCtr {

	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;
	
	
///////// INSERIMENTO /////////
	

@GetMapping("/preInserimentoOffer")
public String preInserimentoOffer() {


	return "OK";

}
@PostMapping("/inserimentoJobOfferSkill")
public String inserimentoJobOfferSkill(Model model,HttpServletRequest request,JobOfferSkill jobOfferSkill) {

	jobOfferSkillRep.save(jobOfferSkill);

	return "Ok";
}

//////// LEGGI/RICERCA ////////

@GetMapping("/preInserimentoId")
public String preInserimentoId() {


	return "Ok";

}


@PostMapping("/ricercaPerIdJobOfferSkill")

public String ricercaPerIdJobOfferSkill (Model model, int idJobOfferSkill) {


	JobOfferSkill jobOfferskill = jobOfferSkillRep.findById(idJobOfferSkill).get();

	model.addAttribute("JobOfferSkill",jobOfferskill);

	return "Ok";


}


///////// AGGIORNAMENTO /////////

@PostMapping("/aggiornaJobOfferSkill")
public String aggiornaJobOfferSkill(Model model,JobOfferSkill jobOfferSkill) {

	jobOfferSkillRep.save(jobOfferSkill);

	return "Ok";
}

///////// ELIMINA ////////

@PostMapping("/eliminaJobOfferSkill")

public String eliminaJobOfferSkill( @RequestParam("idJobOfferSkill") int idJobOfferSkill) {

	JobOfferSkill jobOfferSkill = jobOfferSkillRep.findById(idJobOfferSkill).get();


	jobOfferSkillRep.delete(jobOfferSkill);

	return "Ok";
}


	
}
