package com.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dao.SkillRepository;

import com.model.Skill;

@CrossOrigin
@RestController
@RequestMapping("Skill")
public class SkillRest {

	@Autowired
	private SkillRepository skillRep;


	///////// INSERIMENTO /////////

	@PostMapping("inserisci")
	public ResponseEntity<String> inserisci (@RequestBody Skill s) {
		System.out.println("inserimento nel DB: " + s.getIdSkill());
		return ResponseEntity.ok("Inserimento Skill");
	}

	////////LEGGI/RICERCA ////////
	
	@GetMapping("ricercaByIdSkill/{idSkill}")
	  public Skill ricercaByIdSkill(@PathVariable("idSkill") int idSkill) {
		  
	 Skill skill = skillRep.findById(idSkill).get();
		  
			return skill;
	  }
	
	
	///////// AGGIORNAMENTO /////////

	@PutMapping("aggiornaSkill")
	public ResponseEntity<String> aggiornaSkill(@RequestBody Skill skill) {
		System.out.println(skill.toString());

		if (skill.getTitle() == null || skill.getTitle().isEmpty()) {
			return ResponseEntity.ok("Il campo 'title' non può essere null o vuoto");
		}

		if (skill.getDescription() == null || skill.getDescription().isEmpty()) {
			return ResponseEntity.ok("Il campo 'description' non può essere null o vuoto");
		}

		Skill s = skillRep.findById(skill.getIdSkill()).orElse(null);

		if (s == null) {
			return ResponseEntity.ok("Skill non trovata per l'ID specificato");
		}

		// Aggiornamento dei campi
		s.setTitle(skill.getTitle());
		s.setDescription(skill.getDescription());

		skillRep.save(s);

		return ResponseEntity.ok("Aggiornamento Skill andato a buon fine.");
	}

	///////// ELIMINA ////////
	@DeleteMapping ("elimina")
	public ResponseEntity<String> eliminaSkill (@RequestParam (name = "idSkill") int idSkill) {
		
		skillRep.deleteById(idSkill);

		return ResponseEntity.ok("Eliminato");

	}
	
	//READ Skill by ID CANDIDATE
	@GetMapping("findSkillByIdCandidate/{idCandidate}")
	public List <Skill> findSkillByIdCandidate (@PathVariable(value="idCandidate") int idCandidate) {
		
		return skillRep.findByCandidateSkills_candidate_idCandidate(idCandidate);
		//localhost:8080/Skill/findSkillByIdCandidate/1
		
	}
}
