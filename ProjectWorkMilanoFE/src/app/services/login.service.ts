import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Employee } from '../model/Employee';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  constructor(private hC: HttpClient) { }

  getLogin(user:String, pwd:String){
    return this.hC.get<Employee>('http://localhost:8080/Login/login?username='+ user + '&password='+ pwd);
  }
}
