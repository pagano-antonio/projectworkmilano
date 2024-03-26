import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { JobOfferSkill } from '../model/JobOfferSkill';

@Injectable({
  providedIn: 'root'
})
export class JobofferskillService {

  constructor(private hC: HttpClient) { }

  addJobOfferSkill(jobofskill:JobOfferSkill){
    return this.hC.post<String>('http://localhost:8080/JobOfferSkill/inserisci', jobofskill, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getJobOfferSkillById(id:number){
    return this.hC.get<JobOfferSkill>('http://localhost:8080/JobOfferSkill/ricercaByIdJobOfferSkill/'+ id);
  }

  updateJobOfferSkill(jobofskill:JobOfferSkill){
    return this.hC.put<String>('http://localhost:8080/JobOfferSkill/aggiornaJobOfferSkill', jobofskill, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteJobOfferSkill(id:number){
    return this.hC.delete<JobOfferSkill>('http://localhost:8080/JobOfferSkill/elimina?idJobOfferSkill=' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
