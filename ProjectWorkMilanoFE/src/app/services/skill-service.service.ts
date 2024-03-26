import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Skill } from '../model/Skill';

@Injectable({
  providedIn: 'root'
})
export class SkillServiceService {

  constructor(private hC: HttpClient) { }

  getSkillsByIdCandidate(id:number){
    return this.hC.get<Skill>('http://localhost:8080/Skill/findSkillByIdCandidate/'+ id);
  }
}
