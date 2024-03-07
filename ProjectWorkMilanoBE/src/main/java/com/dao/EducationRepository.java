package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.CompanyClient;
import com.model.Education;

@Repository
public interface EducationRepository extends JpaRepository <Education, Integer> {
	
	public Education findByIdEducation (int idEducation);


}
