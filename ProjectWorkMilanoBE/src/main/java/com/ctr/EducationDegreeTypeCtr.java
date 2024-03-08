package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EducationDegreeTypeRepository;
import com.model.EducationDegreeType;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("EducationDegreeTypeCtr")

public class EducationDegreeTypeCtr {
	
	@Autowired
    private EducationDegreeTypeRepository educationDegreeTypeRep;
	
	
	@GetMapping("/preInserimento")
    public String preInserimento(Model model) {

        return "OK";
    } 
	
	@PostMapping("/inserimentoEducationDegreeType")
    public String inserisci(Model model, HttpServletRequest request, EducationDegreeType educationDegreeType) {

		educationDegreeTypeRep.save(educationDegreeType);
		return "OK";
    }
	
	@GetMapping("/preInserimentoId")
    public String preInserimentoId(Model model) {
		
        return "OK";
    }
	
	@PostMapping("/ricercaEducationDegreeTypePerId")
	public String ricercaById(Model model, int idEducationDegreeType) {
	
		EducationDegreeType educationDegreeType = educationDegreeTypeRep.findById(idEducationDegreeType).get();
			model.addAttribute("educationDegreeTypeCercato",educationDegreeType);
			
			return "OK";
	}
	
	@PostMapping("/aggiornaEducationDegreeTypePerId")
	public String aggiornaEducationDegreeTypePerId(Model model, EducationDegreeType educationDegreeType) {
		System.out.println("aggiorno"+educationDegreeType);
		educationDegreeTypeRep.save(educationDegreeType);
		return "OK";
	}
		
	@PostMapping("/eliminaEducationDegreeTypePerId")
	public String eliminaEducationDegreeTypePerId (Model model, int idEducationDegreeType) {
		System.out.println("Eliminazione riuscita: " + idEducationDegreeType);
		
		educationDegreeTypeRep.deleteById(idEducationDegreeType);
		return "OK";
	}

}

	

