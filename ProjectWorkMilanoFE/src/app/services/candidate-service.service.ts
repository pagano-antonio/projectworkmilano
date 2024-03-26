import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Candidate } from '../model/Candidate';

@Injectable({
  providedIn: 'root',
})

export class CandidateService {

  constructor(private hC: HttpClient) { }

  getCandidateById(id:number){
    return this.hC.get<Candidate>('http://localhost:8080/Candidate/findByIdCandidate/'+ id);
  }

  updateCandidate(candidate:Candidate){
    return this.hC.get<Candidate>('http://localhost:8080/Candidate/updateCandidate');
  }

}
