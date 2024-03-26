import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CandidateCommercialData } from '../model/CandidateCommercialData';

@Injectable({
  providedIn: 'root'
})
export class CandidatecommercialdataService {

  constructor(private hC: HttpClient) { }

  addCandidateCommercialData(ccd:CandidateCommercialData){
    return this.hC.post<String>('http://localhost:8080/CandidateCommercialData/addCandidateCommercialData', ccd, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  updateCandidateCommercialData(ccd:CandidateCommercialData){
    return this.hC.put<String>('http://localhost:8080/CandidateCommercialData/updateCandidateCommercialData', ccd, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteCandidateCommercialData(id:number){
    return this.hC.delete<CandidateCommercialData>('http://localhost:8080/CandidateCommercialData/deleteCandidateCommercialData/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getCandidateCommercialDataById(id:number){
    return this.hC.get<CandidateCommercialData>('http://localhost:8080/CandidateCommercialData/findByIdCandidateCommercialData/'+ id);
  }
}
