package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.SkillRepository;

import com.model.Skill;

import jakarta.servlet.http.HttpServletRequest;



@Controller
public class SkillCtr {
	
	@Autowired
	private SkillRepository skillRep;
	
	///////// INSERIMENTO /////////
	
	
	@GetMapping("/preInserimento")
	public String preInserimento(Model model) {


		return "OK";

	}
	@PostMapping("/inserimentoSkill")
	public String inserimento(Model model,HttpServletRequest request,Skill skill) {

		skillRep.save(skill);

		return "Ok";
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
	
	
	///////// AGGIORNAMENTO /////////
	
	@PostMapping("/aggiornaSkill")
	public String aggiorna(Model model,Skill skill) {

		skillRep.save(skill);

		return "Ok";
	}
	
	///////// ELIMINA ////////
	
	@PostMapping("/eliminaSkill")

	public String eliminaSkill( @RequestParam("idSkill") int idSkill) {

		Skill skill = skillRep.findById(idSkill).get();


		skillRep.delete(skill);

		return "Ok";
	}
}
