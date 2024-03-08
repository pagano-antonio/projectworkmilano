package com.ctr;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.dao.WorkExperienceRepository;
import com.model.WorkExperience;



@Controller
public class WorkExperienceCtr {
	
	@Autowired
	private WorkExperienceRepository WorkExperienceRepository; 
	
/////////////////////////////////////////////////////    METODO ADD  /////////////////////////////////////////////////////////////////		 

@GetMapping("/preAdd")
public String preAdd() {

return "preAdd";
}

@PostMapping("/add")
public String add(Model model, WorkExperience we) {

	WorkExperienceRepository.save(we);

return "AddOK";
}

/////////////////////////////////////////////////////// METODO DELETE /////////////////////////////////////////////////////////////////		 	

@GetMapping("/delete")

public String delete(int idWorkExperience) {

	WorkExperienceRepository.deleteById(idWorkExperience);

return "DeleteOK";
}
/////////////////////////////////////////////////// METODO FIND BY ID /////////////////////////////////////////////////////////////////		 	

@GetMapping("/preFindById")
public String preFindById() {

return "preFindByidWorkExperience";
}

@PostMapping("/findById")
public String findById(Model model, int idWorkExperience) {

Optional<WorkExperience> weOp = WorkExperienceRepository.findById(idWorkExperience);

if (weOp.isPresent()) {
	WorkExperience we = weOp.get();
model.addAttribute("WorkExperience", we);

return "FindByidWorkExperience";
} else {      
return "errore"; 
}
}   
/////////////////////////////////////////////////////// METODO UPDATE /////////////////////////////////////////////////////////////////		 

@GetMapping("/preUpdate")
public String preUpdate(Model model,int idWorkExperience ) {

Optional<WorkExperience> weOp = WorkExperienceRepository.findById(idWorkExperience);

if (weOp.isPresent()) {
	WorkExperience we = weOp.get();
model.addAttribute("WorkExperience", we);

return "preUpdateForm";
} else {      
return "errore"; 
}
}
@PostMapping("/update")
public String update( @ModelAttribute("WorkExperience") WorkExperience sji) {

	WorkExperienceRepository.save(sji);		

return "updateOK";

}
}
