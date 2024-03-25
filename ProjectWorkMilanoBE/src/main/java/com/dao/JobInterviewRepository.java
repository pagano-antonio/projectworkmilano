package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Candidate;
import com.model.JobInterview;

@Repository
public interface JobInterviewRepository extends JpaRepository<JobInterview, Integer> {

	List<JobInterview> findByCandidate(Candidate candidate);

	JobInterview findByIdJobInterview(int idJobInterview);
}
