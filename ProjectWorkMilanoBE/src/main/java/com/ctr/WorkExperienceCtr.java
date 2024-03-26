package com.ctr;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateRepository;
import com.dao.WorkExperienceRepository;
import com.model.Candidate;
import com.model.WorkExperience;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/wk")
public class WorkExperienceCtr {

	@Autowired
	private WorkExperienceRepository WorkExperienceRepository;
	@Autowired
	CandidateRepository candidateRep;

/////////////////////////////////////////////////////    METODO ADD  /////////////////////////////////////////////////////////////////		 

	@GetMapping("/addNewWorkExperience")
	public String preAddWork(Model model, HttpServletRequest request) {
		List<Candidate> candidateList = candidateRep.findAll();
		model.addAttribute("candidates", candidateList);
		return "addNewWorkExperience";
	}

	@PostMapping("/addNewWorkExperienceSuccess")
	public String addWork(Model model, WorkExperience we) {

		WorkExperienceRepository.save(we);

		return "addNewWorkExperienceSuccess";
	}

/////////////////////////////////////////////////////// METODO DELETE /////////////////////////////////////////////////////////////////		 	

	@GetMapping("/deleteWork")

	public String deleteWork(int idWorkExperience) {

		WorkExperienceRepository.deleteById(idWorkExperience);

		return "DeleteOK";
	}
/////////////////////////////////////////////////// METODO FIND BY ID /////////////////////////////////////////////////////////////////		 	

	@GetMapping("/findByIdWorkExperienceForm")
	public String preFindByIdWork() {

		return "findByIdWorkExperienceForm";
	}

	@GetMapping("/findByIdWorkExperience")
	public String findByIdWork(Model model, int idWorkExperience) {

		Optional<WorkExperience> weOp = WorkExperienceRepository.findById(idWorkExperience);

		if (weOp.isPresent()) {
			WorkExperience we = weOp.get();
			model.addAttribute("WorkExperience", we);

			return "findByIdWorkExperience";
		} else {
			return "Error";
		}
	}
/////////////////////////////////////////////////////// METODO UPDATE /////////////////////////////////////////////////////////////////		 

	@GetMapping("/updateWorkExperienceForm")
	public String preUpdate(Model model, Integer idWorkExperience) {

		Optional<WorkExperience> weOp = WorkExperienceRepository.findById(idWorkExperience);
		if (weOp.isPresent()) {
			WorkExperience we = weOp.get();
			model.addAttribute("WorkExperience", we);

			return "updateWorkExperienceForm";
		} else {
			return "errore";
		}
	}

	@PostMapping("/updateWork")
	public String updateWork(@ModelAttribute("WorkExperience") WorkExperience sji) {

		WorkExperienceRepository.save(sji);
		return "updateWorkExperienceSuccess";

	}

/////////// RICERCA WORK EXPERIENCE PER ID CANDIDATE //////////////
	@GetMapping("/preRicercaWEPerIdCandidate")
	public String preRicercaWEPerIdCandidate() {

		return "ricercaWEPerIdCandidate";
	}

	@PostMapping("/ricercaWEPerIdCandidate")
	public String ricercaWEPerIdCandidate(Model model, @RequestParam int idCandidate) {
		List<WorkExperience> wkLista = WorkExperienceRepository.findByCandidateIdCandidate(idCandidate);
		model.addAttribute("workExperienceList", wkLista);
		return "risultatiRicercaWorkExperiencePerIdCandidate";
	}

}
