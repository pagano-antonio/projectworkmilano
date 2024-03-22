package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dao.EmployeeRepository;
import com.model.Employee;

@CrossOrigin
@RestController
@RequestMapping("/Login")
public class LoginRest {

	@Autowired
    private EmployeeRepository employeeRepository;
	
	
	//READ username & password to log in
	@GetMapping("/login")
	public Employee login(@RequestParam(value="username") String username, @RequestParam(value="password") String password) {
		Employee userCred = employeeRepository.findByUsernameAndPassword(username, password);
		
			return userCred;
		//localhost:8080/Login/login?username=SofiaDeFano&password=sofia892
	}
	
}
