import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { EducationDegreeType } from '../model/EducationDegreeType';

@Injectable({
  providedIn: 'root'
})
export class EducationdegreetypeService {

  constructor(private hC: HttpClient) { }

  addEducationDegreeType(edt:EducationDegreeType){
    return this.hC.post<String>('http://localhost:8080/EducationDegreeType/inserisciEducationDegreeType', edt, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  updateEducationDegreeType(edt:EducationDegreeType){
    return this.hC.put<String>('http://localhost:8080/EducationDegreeType/aggiornaEducationDegreeType', edt, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  deleteEducationDegreeType(id:number){
    return this.hC.delete<EducationDegreeType>('http://localhost:8080/EducationDegreeType/eliminaEducationDegreeType/' + id, {
      responseType: 'text' as 'json'
      // The "as 'json'" part is a type assertion needed to satisfy TypeScript's type checking,
      // because the HttpClient methods expect a generic type that matches the responseType.
      // Since we're overriding the default expected JSON response with text, we need this assertion.
    });
  }

  getEducationDegreeTypeById(id:number){
    return this.hC.get<EducationDegreeType>('http://localhost:8080/EducationDegreeType/findeducationDegreeTypeById?ideducationDegreeType='+ id);
  }

  getAllEducationDegreeTypes(){
    return this.hC.get<EducationDegreeType[]>('http://localhost:8080/EducationDegreeType/findAllEducationDegreeTypes');
  }

}
