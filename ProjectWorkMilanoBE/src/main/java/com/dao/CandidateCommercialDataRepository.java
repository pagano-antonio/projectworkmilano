package com.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.model.Candidate;
import com.model.CandidateCommercialData;

@Repository
public interface CandidateCommercialDataRepository extends JpaRepository <CandidateCommercialData, Integer> {

	List<CandidateCommercialData> findByCandidate(Candidate candidate);


}
