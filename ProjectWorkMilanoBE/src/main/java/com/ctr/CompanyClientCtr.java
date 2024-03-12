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

@Controller
@RequestMapping("/CompanyClientCtr")
public class CompanyClientCtr {

	@Autowired
	private CompanyClientRepository companyClientRep;
	
	
	
	//GO TO create Company Client
	@GetMapping("/preAddCompanyClientForm")
	public String addCompanyClientForm () {
		return "addCompanyClientForm";
	}
	
	//CREATE Company Client
	@PostMapping("/addCompanyClient")
	public String addCompanyClient (CompanyClient client) {
		List<CompanyClient> existingClients = companyClientRep.findByAddressAndCityAndName(client.getAddress(), client.getCity(), client.getName());
		
		if(!existingClients.isEmpty()) {
			System.out.println("Company Client already exists in the DB.");
	        return "Error";
		} else {
		companyClientRep.save(client);
		System.out.println("Company Client successfully added to DB.");
		return "addCompanyClientSuccess";
		}
	}
	
	//GO TO read by ID
	@GetMapping("/findByIdCompanyClientForm")
	public String findByIdCompanyClientForm () {
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
			return "Error";
		}
	}
	
	//GO TO read by NAME
	@GetMapping("/preFindCompanyClientByNameForm")
	public String findCompanyClientByNameForm () {
		return "findCompanyClientByNameForm";
	}
	
	//READ Company Client by NAME
	@GetMapping("/findCompanyClientByName")
	public String findCompanyClientByName (Model model, String name) {
		List<CompanyClient> clientList = companyClientRep.findByName(name);
	
		if (clientList != null && clientList.size() > 0) {
			model.addAttribute("companyClientNamesResults", clientList);
			return "findCompanyClientByNameResults";
		} else {
			return "Error";
		}
	}
	
	//GO TO read by CITY
	@GetMapping("/preFindCompanyClientByCityForm")
	public String findCompanyClientByCityForm () {
		return "findCompanyClientByCityForm";
	}
	
	//READ Company Client by CITY
	@GetMapping("/findCompanyClientByCity")
	public String findCompanyClientByCity (Model model, String city) {
		List<CompanyClient> clientList = companyClientRep.findByCity(city);
	
		if (clientList != null && clientList.size() > 0) {
			model.addAttribute("companyClientCitiesResults", clientList);
			return "findCompanyClientByCityResults";
		} else {
			return "Error";
		}
	}
	
	//GO TO update Company Client
	@GetMapping("/preUpdateCompanyClientForm")
	public String updateCompanyClientForm (Model model, int idCompanyClient) {
		CompanyClient client = companyClientRep.findByIdCompanyClient(idCompanyClient);
		
		model.addAttribute("idCompanyClient", client);
		return "updateCompanyClientForm";
	}
	
	//UPDATE Company Client
	@PostMapping("/updateCompanyClient")
	public String updateCompanyClient (CompanyClient client) {
		companyClientRep.save(client);
		
		System.out.println("DB Update successful");
		return "updateSuccess";
	}
	
	//GO TO delete Company Client is useless
	
	//DELETE Company Client
	@GetMapping("/deleteCompanyClient")
	public String deleteCompanyClient (int idCompanyClient) {
		CompanyClient client = companyClientRep.findById(idCompanyClient).orElse(null);

		if (client != null) {
			companyClientRep.delete(client);
			System.out.println("Company Client successfully deleted from DB.");
			return "deleteSuccess";
		} else {
			return "Error";
		}
	}
}
