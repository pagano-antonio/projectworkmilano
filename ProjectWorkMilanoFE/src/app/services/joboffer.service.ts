import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { JobOffer } from '../model/JobOffer';

@Injectable({
  providedIn: 'root'
})
export class JobofferService {

  constructor(private hC: HttpClient) { }

  addJobOffer(jobof:JobOffer){
    return this.hC.post<String>('http://localhost:8080/JobOffer/addJobOffer', jobof, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getJobOfferById(id:number){
    return this.hC.get<JobOffer>('http://localhost:8080/JobOffer/findByIdJobOffer/'+ id);
  }

  getJobOfferByMinRalAndMaxRal(minRal:number, maxRal:number){
    return this.hC.get<JobOffer>('http://localhost:8080/JobOffer/findJobOfferBetweenMinAndMaxRal/'+ minRal + '/'+ maxRal);
  }

  getJobOfferByIdContractType(idct:number){
    return this.hC.get<JobOffer>('http://localhost:8080/JobOffer/findJobOfferByIdContractType/'+ idct);
  }

  updateJobOffer(jobof:JobOffer){
    return this.hC.put<String>('http://localhost:8080/JobOffer/updateJobOffer', jobof, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteJobOffer(id:number){
    return this.hC.delete<JobOffer>('http://localhost:8080/JobOffer/deleteJobOffer/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
