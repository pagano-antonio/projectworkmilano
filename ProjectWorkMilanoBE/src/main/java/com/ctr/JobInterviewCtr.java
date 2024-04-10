package com.ctr;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dao.CandidateRepository;
import com.dao.EmployeeRepository;
import com.dao.JobInterviewRepository;
import com.dao.StateJobInterviewRepository;
import com.model.*;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/JobInterviewCtr")
public class JobInterviewCtr {
	
	@Autowired
	private JobInterviewRepository jobInterviewRep;
	@Autowired
	private CandidateRepository candidateRep;
	@Autowired
	private StateJobInterviewRepository stateJobInterviewRepository;
	@Autowired
    private EmployeeRepository employeeRep;
	
//METODO AGGIUNGI
	
	@GetMapping("/addJobInterviewForm")
    public String addJobIntForm(Model model,HttpServletRequest request){
		List<Candidate> candidateList = candidateRep.findAll();
		model.addAttribute("candidateList", candidateList);
		
		List<Employee> employeeList = employeeRep.findAll();
		model.addAttribute("employeeList", employeeList);
		
		List<StateJobInterview> StateJobList = stateJobInterviewRepository.findAll();
		model.addAttribute("Jilist", StateJobList);
           
		return "addJobInterviewForm";
	}            
        
    @PostMapping("/addJobInterview")
    public String addJobInterview(Model model, HttpServletRequest request, JobInterview jobInterview) {
            System.out.println("CI ENMTRIAMIO");
    	jobInterviewRep.save(jobInterview);
    	System.out.println(jobInterview);
    	List<JobInterview> interviewList = jobInterviewRep.findAll();						
			model.addAttribute("interviewList", interviewList);
        return "seeallJobInterview";
        
	}
    
 //METODO AGGIORNA
     
    @GetMapping("/updateJobInterviewForm")
    public String updateJobIntForm(Model model,HttpServletRequest request, int idJobInterview) {
    	
    	JobInterview ji = jobInterviewRep.findByIdJobInterview(idJobInterview);
		model.addAttribute("LISTAji", ji);
		
		List<StateJobInterview> StateJobList = stateJobInterviewRepository.findAll();
		model.addAttribute("Jilist", StateJobList);
				
		//I need to find Candidates too (foreign key)
		List<Candidate> candidateList = candidateRep.findAll();
		model.addAttribute("candidateList", candidateList);
		
		List<Employee> employeeList = employeeRep.findAll();
		model.addAttribute("employeeList", employeeList);
    	           
    	return "updateJobInterviewForm";  
    	
	}            
   
    @PostMapping("/updateJobInterview")
    public String updateJobInterview(JobInterview jobInterview) {
    	
    	 jobInterviewRep.save(jobInterview);
         return "updateSuccess";
         
    }
    
 //ELIMINA 
    @GetMapping("/delete")
    public String delete(Model model, HttpServletRequest request, Integer idJobInterview) {
    	
    	jobInterviewRep.deleteById(idJobInterview);
        return "deleteSuccess";
        
    }
    
 //RICERCA PER ID 
    @GetMapping("/findByIdJobInterviewForm")
    public String findByIdJobIntForm(Model model, HttpServletRequest request) {
    	
    	return "findByIdJobInterviewForm";
    	
    }
    
    @GetMapping("/findByIdJobInterview")
    public String findByIdJobInterview(Model model, HttpServletRequest request, Integer idJobInterview) {
    	
    	JobInterview interview = jobInterviewRep.findById(idJobInterview).get();
    	model.addAttribute("interview", interview);
    
    	
    	return "findByIdJobInterview"; 
    	
    }
    
//RICERCA PER ID CANDIDATE
    @GetMapping("/preFindJobInterviewByIdCandidate")
    public String preFindJobInterviewByIdCandidate() {
    	
    	System.out.println("preFindJobInterviewByIdCandidate ok");
    	
    	return "preFindJobInterviewByIdCandidate";
    	
    }
    
    @PostMapping("/findJobInterviewByIdCandidate")
    public String findJobInterviewByIdCandidate(Model model, Candidate Candidate) {
    	
    	System.out.println("findJobInterviewByIdCandidate ok");
    	
    	List<JobInterview> ji = jobInterviewRep.findByCandidate(Candidate);
    	
		if (ji!=null) {
			
			System.out.println("findJobInterviewByIdCandidate ok");					
			
			model.addAttribute("LISTAji", ji);
			

			return "findJobInterviewByIdCandidate";
		} else {
			return "Error";
		}
}
    
    
    //SEE ALL
    @GetMapping("/seeallJobInterview")
    public String seeallJobInterview(Model model) {	
    	List<JobInterview> interviewList = jobInterviewRep.findAll();						
			model.addAttribute("interviewList", interviewList);
			return "seeallJobInterview";
	
    		}
}
