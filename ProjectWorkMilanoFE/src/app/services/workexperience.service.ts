import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { WorkExperience } from '../model/WorkExperience';

@Injectable({
  providedIn: 'root'
})
export class WorkexperienceService {

  constructor(private hC: HttpClient) { }

  addWorkExperience(workex:WorkExperience){
    return this.hC.post<String>('http://localhost:8080/WorkExperienceRest/addWorkExperience', workex, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getWorkExperienceById(id:number){
    return this.hC.get<WorkExperience>('http://localhost:8080/WorkExperienceRest/findById/'+ id);
  }

  updateWorkExperience(workex:WorkExperience){
    return this.hC.put<String>('http://localhost:8080/WorkExperienceRest/updateWorkExperience', workex, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteWorkExperience(id:number){
    return this.hC.delete<WorkExperience>('http://localhost:8080/WorkExperienceRest/deleteWorkExperience/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
