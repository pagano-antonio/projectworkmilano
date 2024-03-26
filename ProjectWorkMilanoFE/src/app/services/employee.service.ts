import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Employee } from '../model/Employee';

@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  constructor(private hC: HttpClient) { }

  addEmployee(employee:Employee){
    return this.hC.post<String>('http://localhost:8080/Employee/inserisci', employee, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getEmployeeById(id:number){
    return this.hC.get<Employee>('http://localhost:8080/Employee/ricercaByIdEmployee/'+ id);
  }

  updateEmployee(employee:Employee){
    return this.hC.put<String>('http://localhost:8080/Employee/aggiornaEmployee', employee, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteEmployee(id:number){
    return this.hC.delete<Employee>('http://localhost:8080/Employee/elimina?idEmployee=' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
