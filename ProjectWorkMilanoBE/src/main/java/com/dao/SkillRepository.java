package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.Candidate;
import com.model.Skill;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Integer> {

	 List <Skill>findByCandidateSkills_candidate_idCandidate(int idCandidate);
	 
	

}
