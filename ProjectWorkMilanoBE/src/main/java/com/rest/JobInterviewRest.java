package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobInterviewRepository;
import com.model.JobInterview;

@RestController
@RequestMapping("JobInterview")
public class JobInterviewRest {

	@Autowired
	private JobInterviewRepository jobInterviewRep;
	
//AGGIUNGI
	
	@PostMapping("addJobInterview")
	public String addJobInterview (@RequestBody JobInterview jobInterview) {		
		
		jobInterviewRep.save(jobInterview);
		return "saveSuccess";
		
	}
	
//AGGIORNA
	
	@PutMapping("updateJobInterview")
	public String updateJobInterview (@RequestBody JobInterview jobInterview) {
		
		jobInterviewRep.save(jobInterview);
		return "updateSuccess";
		
	}
	
//ELIMINA
	
	@DeleteMapping ("deleteJobInterview/{idJobInterview}")	
	public String deleteJobInterview (@PathVariable (name = "idJobInterview") Integer idJobInterview) {
		
	     jobInterviewRep.deleteById(idJobInterview);
	     return "deleteSuccess";
	     
	}
	
//CERCA PER ID
	
	@GetMapping("findByIdJobInterview/{idJobInterview}")
    public JobInterview findByIdJobInterview (@PathVariable(value = "idJobInterview") Integer idJobInterview){
		
		JobInterview objectJI = jobInterviewRep.findById(idJobInterview).get();		
		return objectJI;
		
    }	
}
