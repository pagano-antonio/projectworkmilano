package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Employee;

//Modifica Wanda
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
    
}
