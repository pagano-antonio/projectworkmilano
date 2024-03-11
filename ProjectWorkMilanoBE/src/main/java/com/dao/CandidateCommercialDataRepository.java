package com.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Candidate;
import com.model.CandidateCommercialData;

@Repository
public interface CandidateCommercialDataRepository extends JpaRepository <CandidateCommercialData, Integer> {

	Optional<CandidateCommercialData> findByCandidate(Candidate candidate);


}
