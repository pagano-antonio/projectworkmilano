package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.CompanyClient;

@Repository
public interface CompanyClientRepository extends JpaRepository <CompanyClient, Integer> {

	public CompanyClient findByIdCompanyClient (int idCompanyClient);
	
	public List<CompanyClient> findByName (String name);
	
	public List<CompanyClient> findByCity (String city);
	
	public List<CompanyClient> findByAddressAndCityAndName(String address, String city, String name);
}
