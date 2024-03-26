import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Education } from '../model/Education';

@Injectable({
  providedIn: 'root'
})
export class EducationService {

  constructor(private hC: HttpClient) { }

  addEducation(ed:Education){
    return this.hC.post<String>('http://localhost:8080/Education/addEducation', ed, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getEducationById(id:number){
    return this.hC.get<Education>('http://localhost:8080/Education/findEducationById?idEducation='+ id);
  }

  updateEducation(ed:Education){
    return this.hC.put<String>('http://localhost:8080/Education/updateEducation', ed, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteEducation(id:number){
    return this.hC.delete<Education>('http://localhost:8080/Education/deleteEducation?idEducation=' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
