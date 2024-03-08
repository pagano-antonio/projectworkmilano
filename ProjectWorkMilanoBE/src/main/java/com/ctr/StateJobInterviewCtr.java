package com.ctr;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.dao.*;
import com.model.*;

@Controller
public class StateJobInterviewCtr {

	@Autowired
	private StateJobInterviewRepository stateJobInterviewRepository;

/////////////////////////////////////////////////////    METODO ADD  /////////////////////////////////////////////////////////////////		 

	@GetMapping("/preAdd")
	public String preAdd() {

		return "preAdd";
	}

	@PostMapping("/add")
	public String add(Model model, StateJobInterview sji) {

		stateJobInterviewRepository.save(sji);

		return "AddOK";
	}

/////////////////////////////////////////////////////// METODO DELETE /////////////////////////////////////////////////////////////////		 	

	@GetMapping("/delete")

	public String delete(int idStateJobInterview) {

		stateJobInterviewRepository.deleteById(idStateJobInterview);

		return "DeleteOK";
	}
/////////////////////////////////////////////////// METODO FIND BY ID /////////////////////////////////////////////////////////////////		 	

	@GetMapping("/preFindById")
	public String preFindById() {

		return "preFindByIdStateJobInterview";
	}

	@PostMapping("/findById")
	public String findById(Model model, int idStateJobInterview) {

		Optional<StateJobInterview> sjiOptional = stateJobInterviewRepository.findById(idStateJobInterview);

		if (sjiOptional.isPresent()) {
			StateJobInterview sji = sjiOptional.get();
			model.addAttribute("stateJobInterview", sji);

			return "FindByIdStateJobInterview";
		} else {
			return "errore";
		}
	}
/////////////////////////////////////////////////////// METODO UPDATE /////////////////////////////////////////////////////////////////		 

	@GetMapping("/preUpdate")
	public String preUpdate(Model model, int idStateJobInterview) {

		Optional<StateJobInterview> sjiOptional = stateJobInterviewRepository.findById(idStateJobInterview);

		if (sjiOptional.isPresent()) {
			StateJobInterview sji = sjiOptional.get();
			model.addAttribute("stateJobInterview", sji);

			return "preUpdateForm";
		} else {
			return "errore";
		}
	}

	@PostMapping("/update")
	public String update(@ModelAttribute("StateJobInterview") StateJobInterview sji) {

		stateJobInterviewRepository.save(sji);

		return "updateOK";

	}
}