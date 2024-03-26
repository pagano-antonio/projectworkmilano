import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { StateJobInterview } from '../model/StateJobInterview';

@Injectable({
  providedIn: 'root'
})
export class StatejobinterviewService {

  constructor(private hC: HttpClient) { }

  addStateJobInterview(sji:StateJobInterview){
    return this.hC.post<String>('http://localhost:8080/StateJobInterviewRest/addStateJobInterview', sji, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getStateJobInterviewById(id:number){
    return this.hC.get<StateJobInterview>('http://localhost:8080/StateJobInterviewRest/findById/'+ id);
  }

  updateStateJobInterview(sji:StateJobInterview){
    return this.hC.put<String>('http://localhost:8080/StateJobInterviewRest/updateStateJobInterview', sji, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteStateJobInterview(id:number){
    return this.hC.delete<StateJobInterview>('http://localhost:8080/StateJobInterviewRest/deleteStateJobInterview/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
