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
	
<<<<<<< HEAD
	List<JobOffer> findTitleByMinRalAfterAndMaxRalBefore(int minRal, int maxRal);

	List<JobOffer> findBycompanyClient_idCompanyClient(int idCompanyClient);
=======
	List<JobOffer> findTitleByMinRalAfterAndMaxRalBefore(int minRal, int maxRal);	

	List<JobOffer> findByContractType_idContractType(int idContractType);
>>>>>>> 12fdb86779110ebfe65fb21ecd2b180d3eb345fd
}
