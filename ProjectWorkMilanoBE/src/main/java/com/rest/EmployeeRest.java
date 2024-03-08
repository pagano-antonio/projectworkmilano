package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dao.EmployeeRepository;

import com.model.Employee;


@RestController
@RequestMapping("Employee")
public class EmployeeRest {
	
	@Autowired
	private EmployeeRepository employeeRep;
	
///////// INSERIMENTO /////////

@PostMapping("inserisci")
public String inserisci (@RequestBody Employee e) {
	System.out.println("inserimento nel DB: " + e.getIdEmployee());
	return "Inserimento Employee" ;
}

////////LEGGI/RICERCA ////////

@GetMapping("ricercaByIdEmployee/{idEmployee}")
public Employee ricercaByIdEmployee(@PathVariable("idEmployee") int Employee) {
  
	Employee employee = employeeRep.findById(Employee).get();
  
	return employee;
}

///////// AGGIORNARE //////////

@PutMapping("aggiornaEmployee")
public String aggiornaEmployee(@RequestBody Employee employee) {
    System.out.println(employee.toString());

   
    if (employee.getEmployeeType() == null) {
        return "Il campo 'idEmployeeType' non può essere null";
    }

    if (employee.getSurname() == null || employee.getSurname().isEmpty()) {
        return "Il campo 'surname' non può essere null o vuoto";
    }

    if (employee.getEmail() == null || employee.getEmail().isEmpty()) {
        return "Il campo 'email' non può essere null o vuoto";
    }

    if (employee.getPassword() == null || employee.getPassword().isEmpty()) {
        return "Il campo 'password' non può essere null o vuoto";
    }

    if (employee.getUsername() == null || employee.getUsername().isEmpty()) {
        return "Il campo 'username' non può essere null o vuoto";
    }

    Employee employeeDaAggiornare = employeeRep.findById(employee.getIdEmployee()).orElse(null);

    if (employeeDaAggiornare == null) {
        return "Utente non trovato per l'ID specificato";
    }

    
    employeeDaAggiornare.setEmployeeType(employee.getEmployeeType());
    employeeDaAggiornare.setSurname(employee.getSurname());
    employee.setEmail(employee.getEmail());
    employee.setPassword(employee.getPassword());
    employee.setUsername(employee.getUsername());

   
    employeeRep.save(employeeDaAggiornare);

    return "Aggiornamento employee andato a buon fine.";
}


///////// ELIMINA ////////
@DeleteMapping ("elimina")
public String eliminaEmployee (@RequestParam (name = "idEmployee") int idEmployee) {

	employeeRep.deleteById(idEmployee);

return "ELIMINATO";

}

}
