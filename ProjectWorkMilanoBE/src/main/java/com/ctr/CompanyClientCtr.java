package com.ctr;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CompanyClientRepository;
import com.dao.JobOfferRepository;
import com.model.CompanyClient;
import com.model.JobOffer;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/CompanyClientCtr")
public class CompanyClientCtr {

	@Autowired
	private CompanyClientRepository companyClientRep;
	@Autowired
	private JobOfferRepository jobOfferRep;

	// GO TO create Company Client
	@GetMapping("/preAddCompanyClientForm")
	public String addCompanyClientForm() {
		return "addCompanyClientForm";
	}

	// CREATE Company Client
	@PostMapping("/addCompanyClient")
	public String addCompanyClient(CompanyClient client) {
		List<CompanyClient> existingClients = companyClientRep.findByAddressAndCityAndName(client.getAddress(),
				client.getCity(), client.getName());

		if (!existingClients.isEmpty()) {
			System.out.println("Company Client already exists in the DB.");
			return "Error";
		} else {
			companyClientRep.save(client);
			System.out.println("Company Client successfully added to DB.");
			return "addCompanyClientSuccess";
		}
	}

	// GO TO read by ID
	@GetMapping("/findByIdCompanyClientForm")
	public String findByIdCompanyClientForm() {
		return "findByIdCompanyClient";
	}

	// READ Company Client by ID
	@GetMapping("/findByIdCompanyClient")
	public String findByIdCompanyClient(Model model, int idCompanyClient) {

		CompanyClient client = companyClientRep.findByIdCompanyClient(idCompanyClient);

		String searchType = "byID";

		if (client != null) {
			model.addAttribute("idCompanyClient", client);
			model.addAttribute("searchType", searchType);
			return "findByIdCompanyClientResults";
		} else {
			return "Error";
		}
	}

	// GO TO read by NAME
	@GetMapping("/preFindCompanyClientByNameForm")
	public String findCompanyClientByNameForm() {
		return "findCompanyClientByNameForm";
	}

	// READ Company Client by NAME
	@GetMapping("/findCompanyClientByName")
	public String findCompanyClientByName(Model model, String name) {
		List<CompanyClient> clientList = companyClientRep.findByName(name);

		String searchType = "byName";

		if (clientList != null && clientList.size() > 0) {
			model.addAttribute("companyClientNamesResults", clientList);
			model.addAttribute("searchType", searchType);
			return "findCompanyClientByNameResults";
		} else {
			return "Error";
		}
	}

	// GO TO read by CITY
	@GetMapping("/preFindCompanyClientByCityForm")
	public String findCompanyClientByCityForm() {
		return "findCompanyClientByCityForm";
	}

	// READ Company Client by CITY
	@GetMapping("/findCompanyClientByCity")
	public String findCompanyClientByCity(Model model, String city) {
		List<CompanyClient> clientList = companyClientRep.findByCity(city);

		String searchType = "byCity";

		if (clientList != null && clientList.size() > 0) {
			model.addAttribute("companyClientCitiesResults", clientList);
			model.addAttribute("searchType", searchType);
			return "findCompanyClientByCityResults";
		} else {
			return "Error";
		}
	}

	// GO TO update Company Client
	@GetMapping("/preUpdateCompanyClientForm")
	public String updateCompanyClientForm(Model model, int idCompanyClient) {
		CompanyClient client = companyClientRep.findByIdCompanyClient(idCompanyClient);

		model.addAttribute("idCompanyClient", client);
		return "updateCompanyClientForm";
	}

	// UPDATE Company Client
	@PostMapping("/updateCompanyClient")
	public String updateCompanyClient(CompanyClient client) {
		companyClientRep.save(client);

		System.out.println("DB Update successful");
		return "updateSuccess";
	}

	// GO TO delete Company Client is useless

	// DELETE Company Client
	@GetMapping("/deleteCompanyClient")
	public String deleteCompanyClient(Model model, int idCompanyClient, String city, String name, String searchType) {
		CompanyClient client = companyClientRep.findById(idCompanyClient).orElse(null);

		if (client != null) {
			companyClientRep.delete(client);
			System.out.println("Company Client successfully deleted from DB.");

			if ("byName".equals(searchType)) {
				
				List<CompanyClient> newResultsN = companyClientRep.findByName(name);
				model.addAttribute("companyClientNamesResults", newResultsN);
				
				return "findCompanyClientByNameResults";
				
			} else if ("byCity".equals(searchType)) {
				
				List<CompanyClient> newResultsC = companyClientRep.findByCity(city);
				model.addAttribute("companyClientCitiesResults", newResultsC);
				
				return "findCompanyClientByCityResults";
			} else {
				return "deleteSuccess";
			}
		} else {
			return "Error";
		}
	}
	
	
	
	
	
	@GetMapping("/companyClientFind") //------pagina che mostra tutte le company con redirect nel cercaid
	public String companyClientFind (Model model) {
		List<CompanyClient> lista = new ArrayList<CompanyClient>();
		lista=companyClientRep.findAll();
		model.addAttribute("lista", lista);
	    return "companyClientLinks";}

	/* @PostMapping("/findJobOfferByClientCompany")
	    public String findJobOfferByClientCompany(Model model, HttpServletRequest request, Integer idCompanyClient) {
	    	List <JobOffer> offerlist = jobOfferRep.findByCompanyClient(idCompanyClient);
	        model.addAttribute("jobOffers", offerlist);
	    	return "findJobOfferByIdCompantClient"; }
*/	    	
	    
	
	
	
}
