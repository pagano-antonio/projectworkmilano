import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Skill } from '../model/Skill';

@Injectable({
  providedIn: 'root'
})
export class SkillServiceService {

  constructor(private hC: HttpClient) { }

  addSkill(skill:Skill){
    return this.hC.post<String>('http://localhost:8080/Skill/inserisci', skill, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getSkillById(id:number){
    return this.hC.get<Skill>('http://localhost:8080/Skill/ricercaByIdSkill/'+ id);
  }

  updateSkill(skill:Skill){
    return this.hC.put<String>('http://localhost:8080/Skill/aggiornaSkill', skill, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteSkill(id:number){
    return this.hC.delete<Skill>('http://localhost:8080/Skill/elimina?idSkill=' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
  
  getSkillsByIdCandidate(id:number){
    return this.hC.get<Skill>('http://localhost:8080/Skill/findSkillByIdCandidate/'+ id);
  }
}
