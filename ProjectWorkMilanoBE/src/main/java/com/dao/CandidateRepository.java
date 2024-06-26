package com.dao;




import java.math.BigInteger;



import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.model.Candidate;

@Repository
public interface CandidateRepository extends JpaRepository <Candidate, Integer> {
/*Integer: Specifica il tipo della chiave primaria dell'entità Candidate. 
In questo caso, la chiave primaria è di tipo Integer. 
La dichiarazione JpaRepository<Candidate, Integer> indica che CandidateRepository gestisce
operazioni CRUD (create, read, update, delete) per un'entità Candidate utilizzando un
identificatore di tipo Integer.

Questa interfaccia estende l'interfaccia JpaRepository di Spring Data JPA, 
fornendo metodi già pronti per eseguire operazioni comuni sul database per 
l'entità Candidate. Quando utilizzi questa interfaccia, Spring Data JPA gestirà 
automaticamente la creazione delle query necessarie per l'operazione che stai cercando di eseguire.*/
	

	public List <Candidate> findByCity(String city);
	
	public List <Candidate> findByJobInterview_outcome(int outcome);
	
	public List <Candidate> findByJobInterview_StateJobInterview_idStateJobInterview(int idStateJobInterview);
	
	public List<Candidate> findByWorkExperiences_Company(String company);
	
	public List<Candidate> findBySurname (String surname);
	
	public List<Candidate> findByPhone (BigInteger phone);

	public List<Candidate> findByEducations_EducationDegreeType_IdEducationDegreeType (Integer idEducationDegreeType);
	
	public List<Candidate> findByCandidateSkills_Skill_Title (String title);


}
