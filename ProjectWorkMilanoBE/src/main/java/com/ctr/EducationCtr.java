package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EducationRepository;
import com.model.Education;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/EducationCtr")
public class EducationCtr {
	
	@Autowired
	private EducationRepository educationRep;
	
	
	//GO TO create Education
	@GetMapping("/addEducationForm")
	public String addEducationForm () {
			return "addEducation";
	}
		
	//CREATE Education
	@PostMapping("/addEducation")
	public String addEducation (Education ed) {
			
		//There is no controller here, because even if it is very unlikely two candidates can have the same
		//Education data...
			
		educationRep.save(ed);
		System.out.println("Education successfully added to DB.");
			return "addEducationSuccess";
		}
		
		//GO TO read by ID
		@GetMapping("/findByIdEducationForm")
		public String findByIdEducationForm () {
			return "findByIdEducation";
		}
		
		//READ Education by ID
		@GetMapping("/findByIdEducation")
		public String findByIdContractType (Model model, int idEducation) {
			Education ed = educationRep.findByIdEducation(idEducation);
			
			if (ed != null) {
				model.addAttribute("idEducation", ed);
				return "findByIdEducationResults"; 
				} else {
				return "Error";
			}
		}
		
		//GO TO update Education
		@GetMapping("/updateEducationForm")
		public String updateEducationForm () {
			return "updateEducation";
		}
		
		//UPDATE Education
		@PostMapping("/updateEducation")
		public String updateEducation (Education ed) {
			educationRep.save(ed);
			
			System.out.println("DB Update successful");
			return "updateEducationSuccessful";
		}
		
		//GO TO delete Education
		@GetMapping("/deleteEducationForm")
		public String deleteEducationForm () {
			return "deleteEducation";
		}
		
		//DELETE Education
		@GetMapping("/deleteEducation")
		public String deleteEducation (Model model, int idEducation) {
			Education ed = educationRep.findById(idEducation).orElse(null);

				if (ed != null) {
					educationRep.delete(ed);
					System.out.println("Education successfully deleted from DB.");
					return "deleteEducationSuccessful";
				} else {
					return "Error";
				}
		}

}
