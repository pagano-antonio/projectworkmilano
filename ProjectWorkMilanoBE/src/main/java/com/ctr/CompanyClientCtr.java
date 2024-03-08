package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CompanyClientRepository;
import com.model.CompanyClient;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/CompanyClientCtr")
public class CompanyClientCtr {

	@Autowired
	private CompanyClientRepository companyClientRep;
	
	
	
	//GO TO create Company Client
	@GetMapping("/addCompanyClientForm")
	public String addCompanyClientForm (Model model) {
		return "addCompanyClient";
	}
	
	//CREATE Company Client
	@PostMapping("/addCompanyClient")
	public String addCompanyClient (Model model, HttpServletRequest request, CompanyClient client) {
		
		//Here goes something that checks if the Company Client with these data already exists and returns
		//an "existing Company Client" page or an error page
		
		companyClientRep.save(client);
		System.out.println("Company Client successfully added to DB.");
		return "addCompanyClientSuccess";
	}
	
	//GO TO read by ID
	@GetMapping("/findByIdCompanyClientForm")
	public String findByIdCompanyClientForm (Model model) {
		return "findByIdCompanyClient";
	}
	
	//READ Company Client by ID
	@GetMapping("/findByIdCompanyClient")
	public String findByIdCompanyClient (Model model, int idCompanyClient) {
		
		CompanyClient client = companyClientRep.findByIdCompanyClient(idCompanyClient);
		
		if (client != null) {
			model.addAttribute("idCompanyClient", client);
			return "findByIdCompanyClientResults"; 
			} else {
			return "404error"; //we could add an error message, i don't know how to do that
		}
	}
	
	//GO TO read by NAME
	@GetMapping("/findCompanyClientByNameForm")
	public String findCompanyClientByNameForm (Model model) {
		return "findCompanyClientByName";
	}
	
	//READ Company Client by NAME
	@GetMapping("/findCompanyClientByName")
	public String findCompanyClientByName (Model model, String name) {
		List<CompanyClient> clientList = companyClientRep.findByName(name);
	
		if (clientList != null && clientList.size() > 0) {
			model.addAttribute("companyClientNamesResults", clientList);
			return "findCompanyClientByNameResults";
		} else {
			return "404error"; //we could add an error message, i don't know how to do that
		}
	}
	
	//GO TO read by CITY
	@GetMapping("/findCompanyClientByCityForm")
	public String findCompanyClientByCityForm (Model model) {
		return "findCompanyClientByCity";
	}
	
	//READ Company Client by CITY
	public String findCompanyClientByCity (Model model, String city) {
		List<CompanyClient> clientList = companyClientRep.findByCity(city);
	
		if (clientList != null && clientList.size() > 0) {
			model.addAttribute("companyClientCitiesResults", clientList);
			return "findCompanyClientByCityResults";
		} else {
			return "404error"; //we could add an error message, i don't know how to do that
		}
	}
	
	//GO TO update Company Client
	@GetMapping("/updateCompanyClientForm")
	public String updateCompanyClientForm (Model model) {
		return "updateCompanyClient";
	}
	
	//UPDATE Company Client
	@PostMapping("/updateCompanyClient")
	public String updateCompanyClient (Model model, CompanyClient client) {
		companyClientRep.save(client);
		
		System.out.println("DB Update successful");
		return "updateCompanyClientSuccessful";
	}
	
	//GO TO delete Company Client
	@GetMapping("/deleteCompanyClientForm")
	public String deleteCompanyClientForm (Model model) {
		return "deleteCompanyClient";
	}
	
	//DELETE Company Client
	@GetMapping("/deleteCompanyClient")
	public String deleteCompanyClient (Model model, int idCompanyClient) {
		CompanyClient client = companyClientRep.findById(idCompanyClient).orElse(null);

		if (client != null) {
			companyClientRep.delete(client);
			System.out.println("Company Client successfully deleted from DB.");
			return "deleteCompanyClientSuccessful";
		} else {
			return "404error"; //we could add an error message, i don't know how to do that
		}
	}
}
