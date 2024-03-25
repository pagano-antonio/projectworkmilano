package com.dao;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.CompanyClient;
import com.model.JobOffer;

@Repository
public interface JobOfferRepository extends JpaRepository<JobOffer, Integer> {

	List<JobOffer> findByTitle(String title);
	
	List<JobOffer> findByJobOfferSkill_skill_idSkill(int idSkill);

	List<JobOffer> findByStartDateAfterAndEndDateBefore(Date startDate, Date endDate);
	
	List<JobOffer> findByMinRalGreaterThanEqualAndMaxRalGreaterThanEqual(int minRal, int maxRal);

	List<JobOffer> findBycompanyClient_idCompanyClient(int idCompanyClient);
	
	List<JobOffer> findByContractType_idContractType(int idContractType);

}
