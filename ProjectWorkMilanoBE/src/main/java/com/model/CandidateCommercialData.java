package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the candidate_commercial_data database table.
 * 
 */
@Entity
@Table(name = "candidate_commercial_data")
@NamedQuery(name = "CandidateCommercialData.findAll", query = "SELECT c FROM CandidateCommercialData c")
public class CandidateCommercialData implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idCandidateCommercial;

	private int businessCost;

	private int currentRal;

	private int monthRefund;

	private String notes;

	private int proposedRal;

	private byte subsidyFlag;

	// bi-directional many-to-one association to Candidate
	@ManyToOne
	@JoinColumn(name = "idCandidate")
	private Candidate candidate;

	public CandidateCommercialData() {
	}

	public int getIdCandidateCommercial() {
		return this.idCandidateCommercial;
	}

	public void setIdCandidateCommercial(int idCandidateCommercial) {
		this.idCandidateCommercial = idCandidateCommercial;
	}

	public int getBusinessCost() {
		return this.businessCost;
	}

	public void setBusinessCost(int businessCost) {
		this.businessCost = businessCost;
	}

	public int getCurrentRal() {
		return this.currentRal;
	}

	public void setCurrentRal(int currentRal) {
		this.currentRal = currentRal;
	}

	public int getMonthRefund() {
		return this.monthRefund;
	}

	public void setMonthRefund(int monthRefund) {
		this.monthRefund = monthRefund;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getProposedRal() {
		return this.proposedRal;
	}

	public void setProposedRal(int proposedRal) {
		this.proposedRal = proposedRal;
	}

	public byte getSubsidyFlag() {
		return this.subsidyFlag;
	}

	public void setSubsidyFlag(byte subsidyFlag) {
		this.subsidyFlag = subsidyFlag;
	}

	public Candidate getCandidate() {
		return this.candidate;
	}

	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}

}