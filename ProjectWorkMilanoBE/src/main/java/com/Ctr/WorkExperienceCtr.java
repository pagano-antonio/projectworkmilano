package com.Ctr;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.dao.WorkExperienceRepository;


@Controller
public class WorkExperienceCtr {
	
	@Autowired
	private WorkExperienceRepository WorkExperienceRepository;
	

}
