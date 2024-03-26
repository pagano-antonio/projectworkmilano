package com.ctr;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateRepository;
import com.dao.EducationDegreeTypeRepository;
import com.dao.EducationRepository;
import com.model.Education;
import com.model.EducationDegreeType;
import com.model.Candidate;
import com.model.CandidateCommercialData;

@Controller
@RequestMapping("/EducationCtr")
public class EducationCtr {
	
	@Autowired
	private EducationRepository educationRep;
	
	@Autowired
	private EducationDegreeTypeRepository educationDegreeTypeRep;
	
	@Autowired
	private CandidateRepository candidateRep;
	
	
	//GO TO create Education
	@GetMapping("/preAddEducationForm")
	public String addEducationForm (Model model) {
		
		//To add a new Education to DB I need to find Education Degree Types first (foreign key)
		List<EducationDegreeType> educationDegreeTypeList = educationDegreeTypeRep.findAll();
		model.addAttribute("EDTlist", educationDegreeTypeList);
				
		//I need to find Candidates too (foreign key)
		List<Candidate> candidateList = candidateRep.findAll();
		model.addAttribute("candidateList", candidateList);
		return "addEducationForm";
	}
		
	//CREATE Education
	@PostMapping("/addEducation")
	public String addEducation (Model model, Education ed) {
			
		//There is no controller here, because even if it is very unlikely two candidates can have the same
		//Education data...
			
		educationRep.save(ed);
		System.out.println("Education successfully added to DB.");
			return "addEducationSuccess";
		}
		
		//GO TO read by ID
		@GetMapping("/preFindByIdEducationForm")
		public String findByIdEducationForm () {
			return "findByIdEducationForm";
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
		@GetMapping("/preUpdateEducationForm")
		public String updateEducationForm (Model model, int idEducation) {
			Education ed = educationRep.findByIdEducation(idEducation);
			model.addAttribute("idEducation", ed);
			//To add a new Education to DB I need to find Education Degree Types first (foreign key)
			List<EducationDegreeType> educationDegreeTypeList = educationDegreeTypeRep.findAll();
			model.addAttribute("EDTlist", educationDegreeTypeList);
					
			//I need to find Candidates too (foreign key)
			List<Candidate> candidateList = candidateRep.findAll();
			model.addAttribute("candidateList", candidateList);

			return "updateEducationForm";
		}
		
		//UPDATE Education
		@PostMapping("/updateEducation")
		public String updateEducation (Education ed) {
			educationRep.save(ed);
			
			System.out.println("DB Update successful");
			return "updateSuccess";
		}
		
		//GO TO delete Education is useless
		
		//DELETE Education
		@GetMapping("/deleteEducation")
		public String deleteEducation (Model model, int idEducation) {
			Education ed = educationRep.findById(idEducation).orElse(null);

				if (ed != null) {
					educationRep.delete(ed);
					System.out.println("Education successfully deleted from DB.");
					return "deleteSuccess";
				} else {
					return "Error";
				}
		}
		//RICERCA PER ID CANDIDATE
        @GetMapping("/preFindEducationByIdCandidate")
        public String preFindEducationByIdCandidate() {

            System.out.println("preFindEducationByIdCandidate ok");

            return "preFindEducationByIdCandidate";

        }

        @PostMapping("/findEducationByIdCandidate")
        public String findEducationByIdCandidate(Model model, Candidate Candidate) {

            System.out.println("findEducationByIdCandidate ok");

            List<Education> edu = educationRep.findByCandidate(Candidate);

            if (edu!=null) {

                System.out.println("findeducation ok?");

                model.addAttribute("LISTA", edu);


                return "findEducationByIdCandidate";
            } else {
                return "Error";
            }
        }
}