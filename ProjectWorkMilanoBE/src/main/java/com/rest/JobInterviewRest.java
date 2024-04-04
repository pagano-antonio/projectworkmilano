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

import com.dao.JobInterviewRepository;
import com.model.Candidate;
import com.model.JobInterview;

@CrossOrigin
@RestController
@RequestMapping("JobInterview")
public class JobInterviewRest {

	@Autowired
	private JobInterviewRepository jobInterviewRep;

//AGGIUNGI

	@PostMapping("addJobInterview")
	public ResponseEntity<String> addJobInterview(@RequestBody JobInterview jobInterview) {

		jobInterviewRep.save(jobInterview);
		return ResponseEntity.ok("Save Success");

	}

//AGGIORNA

	@PutMapping("updateJobInterview")
	public ResponseEntity<String> updateJobInterview(@RequestBody JobInterview jobInterview) {

		jobInterviewRep.save(jobInterview);
		return ResponseEntity.ok("Update Success");

	}

//ELIMINA

	@DeleteMapping("deleteJobInterview/{idJobInterview}")
	public ResponseEntity<String> deleteJobInterview(@PathVariable(name = "idJobInterview") Integer idJobInterview) {

		jobInterviewRep.deleteById(idJobInterview);
		return ResponseEntity.ok("Delete Success");

	}

//CERCA PER ID

	@GetMapping("findByIdJobInterview/{idJobInterview}")
	public JobInterview findByIdJobInterview(@PathVariable(value = "idJobInterview") Integer idJobInterview) {

		JobInterview objectJI = jobInterviewRep.findById(idJobInterview).get();
		return objectJI;

	}

//CERCA PER ID CANDIDATE

	@GetMapping("/findJobInterviewByIdCandidate/{idCandidate}")
	public List<JobInterview> findJobInterviewsByCandidateId(@PathVariable("idCandidate") int idCandidate) {
		/*
		 * Dal momento che questo metodo nel repository prende in ingresso Candidate ma
		 * a me serve l'ID ho bisogno di creare un candidato da cui estrapolare l'ID.
		 */
		Candidate candidate = new Candidate();
		candidate.setIdCandidate(idCandidate);
		List<JobInterview> jobInterviews = jobInterviewRep.findByCandidate(candidate);
		return jobInterviews;
	}
}
