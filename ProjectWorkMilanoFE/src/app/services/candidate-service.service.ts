import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Candidate } from '../model/Candidate';

@Injectable({
  providedIn: 'root',
})

export class CandidateService {

  constructor(private hC: HttpClient) { }

  candidate:Candidate = new Candidate;

  addCandidate(candidate:Candidate){
    
    return this.hC.post<String>('http://localhost:8080/Candidate/addCandidate', candidate, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  updateCandidate(candidate:Candidate){
    return this.hC.put<String>('http://localhost:8080/Candidate/updateCandidate', candidate, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteCandidate(id:number){
    return this.hC.delete<Candidate>('http://localhost:8080/Candidate/deleteCandidate/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
  
  getAllCandidates(){
    return this.hC.get<Candidate[]>('http://localhost:8080/Candidate/findAllCandidates');
  }
  getCandidateById(id:number){
    return this.hC.get<Candidate>('http://localhost:8080/Candidate/findByIdCandidate/'+ id);
  }

  getCandidateByCity(city:String){
    return this.hC.get<Candidate[]>('http://localhost:8080/Candidate/ricercaByCity/'+ city);
  }

  getCandidateBySurname(surname:String){
    return this.hC.get<Candidate>('http://localhost:8080/Candidate/findCandidateBySurname/' + surname);
  }

  getCandidateByPhone(phone:BigInt){
    return this.hC.get<Candidate>('http://localhost:8080/Candidate/findCandidateByPhone/'+ phone);
  }

  getCandidateByIdEdType(idedtype:number){
    return this.hC.get<Candidate>('http://localhost:8080/Candidate/findCandidateByIdEducationDegreeType/' + idedtype);
  }

  getCandidateBySkills(title:String){
    return this.hC.get<Candidate>('http://localhost:8080/Candidate/findCandidateBySkill/'+ title);
  } //metodo completamente inutile :)
}
