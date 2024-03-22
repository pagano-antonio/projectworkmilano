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

@GetMapping("/preAddWork")
public String preAddWork() {

return "preAdd";
}

@PostMapping("/addWork")
public String addWork(Model model, WorkExperience we) {

	WorkExperienceRepository.save(we);

return "AddOK";
}

/////////////////////////////////////////////////////// METODO DELETE /////////////////////////////////////////////////////////////////		 	

@GetMapping("/deleteWork")

public String deleteWork(int idWorkExperience) {

	WorkExperienceRepository.deleteById(idWorkExperience);

return "DeleteOK";
}
/////////////////////////////////////////////////// METODO FIND BY ID /////////////////////////////////////////////////////////////////		 	

@GetMapping("/preFindByIdWork")
public String preFindByIdWork() {

return "preFindByidWorkExperience";
}

@PostMapping("/findByIdWork")
public String findByIdWork(Model model, int idWorkExperience) {

Optional<WorkExperience> weOp = WorkExperienceRepository.findById(idWorkExperience);

if (weOp.isPresent()) {
	WorkExperience we = weOp.get();
model.addAttribute("WorkExperience", we);

return "FindByidWorkExperience";
} else {      
return "Error"; 
}
}   
/////////////////////////////////////////////////////// METODO UPDATE /////////////////////////////////////////////////////////////////		 

@GetMapping("/preUpdateWork")
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
@PostMapping("/updateWork")
public String updateWork( @ModelAttribute("WorkExperience") WorkExperience sji) {

	WorkExperienceRepository.save(sji);		

return "updateOK";

}
}


