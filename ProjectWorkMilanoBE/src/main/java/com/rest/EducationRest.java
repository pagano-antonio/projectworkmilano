package com.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dao.EducationRepository;
import com.model.CompanyClient;
import com.model.Education;

@RestController
@RequestMapping("Education")
public class EducationRest {
	
	@Autowired
	private EducationRepository educationRep;
	
	//CRUD stands for Create Read Update Delete
	
		//Create
		@PostMapping("addEducation")
		public String addEducation (@RequestBody Education ed) {
			
			Education education = educationRep.save(ed);
			
			System.out.println("Data successfully added to DB.");
			
			return education.toString();
			
			//localhost:8080/Education/addEducation
			
		}
		
		//Read ID
		@GetMapping("findEducationById")
		public Education findByIdEducation (@RequestParam(value="idEducation") int idEducation) {
			
			Education education = educationRep.findByIdEducation(idEducation);
			
			return education;
			
			//localhost:8080/Education/findEducationById?idEducation=1
		}
		
		//Update
		@PutMapping("updateEducation")
		public String updateEducation (@RequestBody Education ed) {
			
			Education education = educationRep.save(ed);
			
			System.out.println("DB Update successful");
			
			return education.toString();
			
			//localhost:8080/Education/updateEducation
		}
		
		//Delete
		@DeleteMapping("deleteEducation")
		public String deleteEducation (@RequestParam(value="idEducation") int idEducation) {
			
			educationRep.deleteById(idEducation);
			
			return "Education successfully deleted from DB.";
			
			//localhost:8080/Education/deleteEducation?idEducation=1
		}

}
