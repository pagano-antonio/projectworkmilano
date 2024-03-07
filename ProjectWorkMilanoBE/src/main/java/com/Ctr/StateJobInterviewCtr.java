package com.Ctr;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.dao.*;
import com.model.StateJobInterview;


@Controller
public class StateJobInterviewCtr {
	
	@Autowired
	private StateJobInterviewRepository StateJobInterviewRepository; 
	


/////////////////////////////////////////////////////    METODO ADD  /////////////////////////////////////////////////////////////////		 

@GetMapping("/preAdd")
public String preAdd() {

return "OK";
}

@PostMapping("/add")
public String add(Model model, StateJobInterview sji) {

System.out.println(sji); // PER VEDERE SE IL METODO FUNZIONA

StateJobInterviewRepository.save(sji);

return "OK";
}

/////////////////////////////////////////////////////// METODO DELETE /////////////////////////////////////////////////////////////////		 	

@GetMapping("/delete")

public String delete(int idStateJobInterview) {

	StateJobInterviewRepository.deleteById(idStateJobInterview);

return "ok";
}
/////////////////////////////////////////////////// METODO FIND BY ID /////////////////////////////////////////////////////////////////		 	

@GetMapping("/preFindById")
public String preFindById() {

	return "PREfindStateJobInterview";
}

@PostMapping("/findById")
public String findById(Model model, int idStateJobInterview) {

Optional<StateJobInterview> sjiOptional = StateJobInterviewRepository.findById(idStateJobInterview);
    
    if (sjiOptional.isPresent()) {
        StateJobInterview sji = sjiOptional.get();
        model.addAttribute("stateJobInterview", sji);
       
        return "OK";
    } else {      
        return "errore"; 
    }
}
}