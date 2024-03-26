import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { EmployeeType } from '../model/EmployeeType';

@Injectable({
  providedIn: 'root'
})
export class EmployeetypeService {

  constructor(private hC: HttpClient) { }

  addEmployeeType(empType:EmployeeType){
    return this.hC.post<String>('http://localhost:8080/EmployeeType/inserisciEmployeeType', empType, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getEmployeeTypeById(id:number){
    return this.hC.get<EmployeeType>('http://localhost:8080/EmployeeType/ricercaEmployeeTypeById?idEmployeeType='+ id);
  }

  updateEmployeeType(empType:EmployeeType){
    return this.hC.put<String>('http://localhost:8080/EmployeeType/aggiornaEmployeeType', empType, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteEmployeeType(id:number){
    return this.hC.delete<EmployeeType>('http://localhost:8080/EmployeeType/eliminaEmployeeType/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
