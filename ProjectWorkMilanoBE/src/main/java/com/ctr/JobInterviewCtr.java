package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobInterviewRepository;
import com.model.JobInterview;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/JobInterviewCtr")
public class JobInterviewCtr {
	
	@Autowired
	private JobInterviewRepository jobInterviewRep;
	
	
//METODO AGGIUNGI
	
	@GetMapping("/addJobInterviewForm")
    public String addJobIntForm(Model model,HttpServletRequest request){
           
		return "addJobInterviewForm";
	}            
        
    @PostMapping("/addJobInterview")
    public String addJobInterview(Model model, HttpServletRequest request, JobInterview jobInterview) {
            
    	jobInterviewRep.save(jobInterview);
        return "saveSuccess";
        
	}
    
 //METODO AGGIORNA
     
    @GetMapping("/updateJobInterviewForm")
    public String updateJobIntForm(Model model,HttpServletRequest request) {
    	           
    	return "updateJobInterviewForm";  
    	
	}            
   
    @PostMapping("/updateJobInterview")
    public String updateJobInterview(Model model, HttpServletRequest request, JobInterview jobInterview) {
    	
    	 jobInterviewRep.save(jobInterview);
         return "updateSuccess";
         
    }
    
 //ELIMINA 
    @PostMapping("/delete")
    public String delete(Model model, HttpServletRequest request, Integer idJobInterview) {
    	
    	jobInterviewRep.deleteById(idJobInterview);
        return "deleteSuccess";
        
    }
    
 //RICERCA PER ID 
    @GetMapping("/findByIdJobInterviewForm")
    public String findByIdJobIntForm(Model model, HttpServletRequest request) {
    	
    	return "findByIdJobInterviewForm";
    	
    }
    
    @PostMapping("/findByIdJobInterview")
    public String findByIdJobInterview(Model model, HttpServletRequest request, Integer idJobInterview) {
    	
    	jobInterviewRep.findById(idJobInterview);
    	return "findByIdJobInterview"; 
    	
    }
}
