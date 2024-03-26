import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CompanyClient } from '../model/CompanyClient';

@Injectable({
  providedIn: 'root'
})
export class CompanyclientService {

  constructor(private hC: HttpClient) { }

  addCompanyClient(companyClient:CompanyClient){
    return this.hC.post<String>('http://localhost:8080/CompanyClient/addCompanyClient', companyClient, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getCompanyClientById(id:number){
    return this.hC.get<CompanyClient>('http://localhost:8080/CompanyClient/findCompanyClientByName?idCompanyClient='+ id);
  }

  getCompanyClientByName(name:String){
    return this.hC.get<CompanyClient>('http://localhost:8080/CompanyClient/findCompanyClientByName?name='+ name);
  }

  getCompanyClientByCity(city:String){
    return this.hC.get<CompanyClient>('http://localhost:8080/CompanyClient/findCompanyClientByCity?city='+ city);
  }

  updateCompanyClient(companyClient:CompanyClient){
    return this.hC.put<String>('http://localhost:8080/CompanyClient/updateCompanyClient', companyClient, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteCompanyClient(id:number){
    return this.hC.delete<CompanyClient>('http://localhost:8080/CompanyClient/deleteCompanyClient?idCompanyClient=' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
