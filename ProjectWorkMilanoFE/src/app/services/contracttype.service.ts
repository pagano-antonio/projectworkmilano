import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ContractType } from '../model/ContractType';

@Injectable({
  providedIn: 'root'
})
export class ContracttypeService {

  constructor(private hC: HttpClient) { }

  addContractType(contract:ContractType){
    return this.hC.post<String>('http://localhost:8080/ContractType/addContractType', contract, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getContractTypeById(id:number){
    return this.hC.get<ContractType>('http://localhost:8080/ContractType/findContractTypeById?idContractType='+ id);
  }

  updateContractType(contract:ContractType){
    return this.hC.put<String>('http://localhost:8080/ContractType/updateContractType', contract, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteContractType(id:number){
    return this.hC.delete<ContractType>('http://localhost:8080/ContractType/deleteContractType?idContractType=' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }
}
