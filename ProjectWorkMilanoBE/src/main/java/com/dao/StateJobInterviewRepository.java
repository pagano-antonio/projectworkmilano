package com.dao;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.model.StateJobInterview;

//StateJobInterviewRepository è un'interfaccia CHE ESTENDE JpaRepository. StateJobInterviewRepository è UN repository CHE GESTISCE 
//LE OPERAZIONI DI ACCESSO AI DATI per l'entità StateJobInterview, UTILIZZANDO FUNZIONALITà FORNITE DA JpaRepository. 
//JpaRepository è un'interfaccia FORNITA DA Spring Data JPA CHE OFFRE METODI REDEFINITI per l'accesso AI DATI NEL database. 
//LA SPECIFICA Integer INDICA IL TIPO dell'ID dell'entità StateJobInterview.

@Repository
public interface StateJobInterviewRepository extends JpaRepository<StateJobInterview, Integer>{

	void delete(Optional<StateJobInterview> res);
	
	//QUI VANNO INSERITI TUTTI I METODI DA IMPLEMENTARE NEI CTR
	
	

}
