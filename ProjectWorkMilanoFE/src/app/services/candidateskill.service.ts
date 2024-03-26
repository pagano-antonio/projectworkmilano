import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CandidateSkill } from '../model/CandidateSkill';

@Injectable({
  providedIn: 'root'
})
export class CandidateskillService {

  constructor(private hC: HttpClient) { }

  addCandidateSkill(canskill:CandidateSkill){
    return this.hC.post<String>('http://localhost:8080/CandidateSkill/addCandidateSkill', canskill, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  updateCandidateSkill(canskill:CandidateSkill){
    return this.hC.put<String>('http://localhost:8080/CandidateSkill/updateCandidateSkill', canskill, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteCandidateSkill(id:number){
    return this.hC.delete<CandidateSkill>('http://localhost:8080/CandidateSkill/deleteCandidateSkill/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getCandidateSkillById(id:number){
    return this.hC.get<CandidateSkill>('http://localhost:8080/CandidateSkill/findByIdCandidateSkill/'+ id);
  }
}
