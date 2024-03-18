package com.ctr;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dao.JobInterviewRepository;
import com.dao.JobOfferRepository;
import com.model.JobInterview;
import com.model.JobOffer;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeCtr {
	
	@Autowired
    private JobOfferRepository jobOfferRep;
	@Autowired
    private JobInterviewRepository jobInterviewRep;

	
	
	
	@GetMapping("/home")
	public String goHome(HttpSession session, Model model) {
	    // Ottieni tutte le offerte di lavoro
	    List<JobOffer> allOffers = jobOfferRep.findAll();
	    List<JobInterview> allInterviews = jobInterviewRep.findAll();
	    Calendar today = Calendar.getInstance();
	    today.set(Calendar.HOUR_OF_DAY, 0); // Imposta l'ora a 00:00:00 per confrontare solo le date
	    
	    // Filtra le offerte per quelle aperte oggi
	    List<JobOffer> openOffersToday = new ArrayList<>();	   
	    for (JobOffer offer : allOffers) {
	        if (!today.getTime().before(offer.getStartDate()) && !today.getTime().after(offer.getEndDate())) {
	            openOffersToday.add(offer);
	        }
	    }

	    // Filtra le interviews che devono ancora esserci
	    List<JobInterview> futureInterviews = new ArrayList<>();	   
	    for (JobInterview interview : allInterviews) {
	        if (interview.getDate().after(today.getTime())) {
	        	futureInterviews.add(interview);
	        }
	    }
	    System.out.print("QUI ATTENZIONE "+futureInterviews.size());
	    // Aggiungi le offerte aperte oggi come attributo alla sessione
	    session.setAttribute("openoffers", openOffersToday);
	    session.setAttribute("futureInterviews", futureInterviews);
	    
	    return "Home"; 
	}
}
