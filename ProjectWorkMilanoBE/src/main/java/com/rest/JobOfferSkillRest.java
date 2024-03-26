package com.rest;

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

import com.dao.JobOfferSkillRepository;
import com.model.JobOfferSkill;

@CrossOrigin
@RestController
@RequestMapping("JobOfferSkill")
public class JobOfferSkillRest {

	
	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;

///////// INSERIMENTO /////////

@PostMapping("inserisci")
public ResponseEntity<String> inserisci (@RequestBody JobOfferSkill s) {
	System.out.println("inserimento nel DB: " + s.getIdJobOfferSkill());
	return ResponseEntity.ok("Inserimento JobOfferSkill");
}

////////LEGGI/RICERCA ////////

@GetMapping("ricercaByIdJobOfferSkill/{idJobOfferSkill}")
  public JobOfferSkill ricercaByIdJobOfferSkill(@PathVariable("idJobOfferSkill") int idJobOfferSkill) {
	  
	JobOfferSkill jobOfferSkill = jobOfferSkillRep.findById(idJobOfferSkill).get();
	  
		return jobOfferSkill;
  }


///////// AGGIORNAMENTO /////////

@PutMapping("aggiornaJobOfferSkill")
public ResponseEntity<String> aggiornaJobOfferSkill(@RequestBody JobOfferSkill jobOfferSkill) {
System.out.println(jobOfferSkill.toString());

JobOfferSkill s = jobOfferSkillRep.findById(jobOfferSkill.getIdJobOfferSkill()).orElse(null);

if (s == null) {
return ResponseEntity.ok("Skill non trovata per l'ID specificato");
}


s.setJobOffer(jobOfferSkill.getJobOffer());
s.setSkill(jobOfferSkill.getSkill());

jobOfferSkillRep.save(s);

return ResponseEntity.ok("Aggiornamento JobOfferSkill andato a buon fine.");
}


///////// ELIMINA ////////
@DeleteMapping ("elimina")
public ResponseEntity<String> eliminaJobOfferSkill (@RequestParam (name = "idJobOfferSkill") int idJobOfferSkill) {
	
	jobOfferSkillRep.deleteById(idJobOfferSkill);

return ResponseEntity.ok("Eliminato");

}
}
