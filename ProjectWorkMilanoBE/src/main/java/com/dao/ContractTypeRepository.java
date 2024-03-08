package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.ContractType;

@Repository
public interface ContractTypeRepository extends JpaRepository <ContractType, Integer> {
	
	public ContractType findByIdContractType (int idContractType);

}
