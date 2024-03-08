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
	public String addEducationForm (Model model) {
			return "addEducation";
	}
		
	//CREATE Education
	@PostMapping("/addEducation")
	public String addEducation (Model model, HttpServletRequest request, Education ed) {
			
		//Here goes something that checks if the Contract Type with these data already exists and returns
		//an "existing Contract Type" page or an error page
			
		educationRep.save(ed);
		System.out.println("Education successfully added to DB.");
			return "addEducationSuccess";
		}
		
		//GO TO read by ID
		@GetMapping("/findByIdEducationForm")
		public String findByIdEducationForm (Model model) {
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
				return "404error"; //we could add an error message, i don't know how to do that
			}
		}
		
		//GO TO update Education
		@GetMapping("/updateEducationForm")
		public String updateEducationForm (Model model) {
			return "updateEducation";
		}
		
		//UPDATE Education
		@PostMapping("/updateEducation")
		public String updateEducation (Model model, Education ed) {
			educationRep.save(ed);
			
			System.out.println("DB Update successful");
			return "updateEducationSuccessful";
		}
		
		//GO TO delete Education
		@GetMapping("/deleteEducationForm")
		public String deleteEducationForm (Model model) {
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
					return "404error"; //we could add an error message, i don't know how to do that
				}
		}

}
