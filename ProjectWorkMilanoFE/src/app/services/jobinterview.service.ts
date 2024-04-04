import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { JobInterview } from '../model/JobInterview';
import { Candidate } from '../model/Candidate';

@Injectable({
  providedIn: 'root'
})
export class JobinterviewService {

  constructor(private hC: HttpClient) { }

  addJobInterview(ji:JobInterview){
    return this.hC.post<String>('http://localhost:8080/JobInterview/addJobInterview', ji, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getJobInterviewById(id:number){
    return this.hC.get<JobInterview>('http://localhost:8080/JobInterview/findByIdJobInterview/'+ id);
  }

  getJobInterviewByIdCandidate(idC:number){
    return this.hC.get<JobInterview[]>('http://localhost:8080/JobInterview/findJobInterviewByIdCandidate/' + idC);
  }

  updateJobInterview(ji:JobInterview){
    return this.hC.put<String>('http://localhost:8080/JobInterview/updateJobInterview', ji, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteJobInterview(id:number){
    return this.hC.delete<JobInterview>('http://localhost:8080/JobInterview/deleteJobInterview/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
