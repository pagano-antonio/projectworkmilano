package com.rest;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.dao.WorkExperienceRepository;
import com.model.WorkExperience;

@RestController
@RequestMapping("WorkExperienceRest")
public class WorkExperienceRest {

	@Autowired
	private WorkExperienceRepository workExperienceRepository;
/////////////////////////////////////////////////////    METODO ADD  /////////////////////////////////////////////////////////////////		 

	@PostMapping
	public String add(@RequestBody WorkExperience sji) {

		workExperienceRepository.save(sji);
		return "OK";
	}

/////////////////////////////////////////////////////    METODO DELETE  /////////////////////////////////////////////////////////////////		 

	@DeleteMapping
	public ResponseEntity<String> delete(@PathVariable("idWorkExperience") int idWorkExperience) {

		Optional<WorkExperience> res = workExperienceRepository.findById(idWorkExperience);

		if (res != null) {

			workExperienceRepository.delete(res);

			return ResponseEntity.ok("User deleted successfully");

		} else {

// Se l'utente non viene trovato, restituisci un codice di stato 404 (Not Found)

			return ResponseEntity.notFound().build();
		}
	}

/////////////////////////////////////////////////// METODO FIND BY ID /////////////////////////////////////////////////////////////////		 	

	@GetMapping("findById/{idWorkExperience}")
	public WorkExperience findById(@PathVariable("idWorkExperience") int idWorkExperience) {

		Optional<WorkExperience> res = workExperienceRepository.findById(idWorkExperience);
		if (res.isPresent()) {
			WorkExperience sji = res.get();
			return sji;
		} else {
			return null;
		}
	}

/////////////////////////////////////////////////// METODO UPDATE /////////////////////////////////////////////////////////////////		 	

	@PutMapping
	public String update(@RequestBody WorkExperience sji) {

		workExperienceRepository.save(sji);

		return "OK";
	}
}
