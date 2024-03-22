package com.dao;
import java.util.List;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.model.WorkExperience;

//WorkExperienceRepository è un'interfaccia CHE ESTENDE JpaRepository. WorkExperienceRepository è UN repository CHE GESTISCE 
//LE OPERAZIONI DI ACCESSO AI DATI per l'entità WorkExperience, UTILIZZANDO FUNZIONALITà FORNITE DA JpaRepository. 
//JpaRepository è un'interfaccia FORNITA DA Spring Data JPA CHE OFFRE METODI REDEFINITI per l'accesso AI DATI NEL database. 
//LA SPECIFICA Integer INDICA IL TIPO dell'ID dell'entità WorkExperience.

@Repository
public interface WorkExperienceRepository extends JpaRepository<WorkExperience, Integer> {
	
	List<WorkExperience> findByCandidateIdCandidate(int idCandidate);
	//QUI VANNO INSERITI TUTTI I METODI DA IMPLEMENTARE NEI CTR
	
}
