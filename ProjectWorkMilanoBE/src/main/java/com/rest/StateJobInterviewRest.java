package com.rest;

import java.util.List;
import java.util.Optional;

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
import org.springframework.web.bind.annotation.RestController;
import com.dao.StateJobInterviewRepository;
import com.model.Candidate;
import com.model.StateJobInterview;

@CrossOrigin
@RestController
@RequestMapping("StateJobInterviewRest")
public class StateJobInterviewRest {

	@Autowired
	private StateJobInterviewRepository stateJobInterviewRepository;

/////////////////////////////////////////////////////    METODO ADD  /////////////////////////////////////////////////////////////////		 

	@PostMapping("addStateJobInterview")
	public ResponseEntity<String> add(@RequestBody StateJobInterview sji) {

		System.out.println(sji.toString());
		stateJobInterviewRepository.save(sji);
		return ResponseEntity.ok("OK");
	}

/////////////////////////////////////////////////////    METODO DELETE  /////////////////////////////////////////////////////////////////		 

	@DeleteMapping("deleteStateJobInterview/{idStateJobInterview}")
	public ResponseEntity<String> delete(@PathVariable(value="idStateJobInterview") int idStateJobInterview) {

		StateJobInterview res = stateJobInterviewRepository.findById(idStateJobInterview).get();

		if (res != null) {

			stateJobInterviewRepository.delete(res);
			return ResponseEntity.ok("Delete Success");

		} else {

			// Se l'utente non viene trovato, restituisci un codice di stato 404 (Not Found)	
			return ResponseEntity.ok("Delete Not Success");
		}
	}

/////////////////////////////////////////////////// METODO FIND BY ID /////////////////////////////////////////////////////////////////		 	

	@GetMapping("findById/{idStateJobInterview}")
	public StateJobInterview findById(@PathVariable("idStateJobInterview") int idStateJobInterview) {

		Optional<StateJobInterview> res = stateJobInterviewRepository.findById(idStateJobInterview);
		if (res.isPresent()) {
			StateJobInterview sji = res.get();
			return sji;
		} else {
			return null;
		}
	}

/////////////////////////////////////////////////// METODO UPDATE /////////////////////////////////////////////////////////////////		 	

	@PutMapping("updateStateJobInterview")
	public ResponseEntity<String> update(@RequestBody StateJobInterview sji) {

		stateJobInterviewRepository.save(sji);

		return ResponseEntity.ok("OK");
	}
	
	//FIND ALL
		@GetMapping("findAllStateJobInterviews")
	    public List<StateJobInterview> findAllStateJobInterviews() {
	        return stateJobInterviewRepository.findAll();
	    }
}