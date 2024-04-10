import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { Router } from '@angular/router';
import { JobinterviewService } from '../../services/jobinterview.service';
import { JobInterview } from '../../model/JobInterview';
import { CandidateService } from '../../services/candidate-service.service';
import { Candidate } from '../../model/Candidate';
import { StateJobInterview } from '../../model/StateJobInterview';
import { StatejobinterviewService } from '../../services/statejobinterview.service';
import { Employee } from '../../model/Employee';
import { EmployeeService } from '../../services/employee.service';

@Component({
  selector: 'app-add-job-interview',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './add-job-interview.component.html',
  styleUrl: './add-job-interview.component.css'
})
export class AddJobInterviewComponent {

  //creo un oggetto di tipo JobInterview
  jobinterview:JobInterview = new JobInterview;

  //creo un oggetto che possa contenere gli attributi di JobInterview da inviare
  jobInterviewDataToSend:any;

  //creo un oggetto Candidate per il <select> e anche una lista
  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  //creo un oggetto StateJobInterview per lo stesso motivo di sopra
  stateji:StateJobInterview = new StateJobInterview;
  statejis:StateJobInterview[] = [];

  //faccio lo stesso con Employee
  employee:Employee = new Employee;
  employees:Employee[] = [];

  //definisco anche un costruttore per poter usare il Router e i Service
  constructor(private router:Router, 
    private jiSer:JobinterviewService, 
    private candidateSer:CandidateService,
    private stateJiSer:StatejobinterviewService,
    private empService:EmployeeService){}

  //Devo dettare le condizioni d'esistenza del componente, perché devo richiamare i CANDIDATI
  //lo STATE JOB INTERVIEW e gli EMPLOYEES
  ngOnInit(){
    this.candidateSer.getAllCandidates().subscribe( //richiamiamo anche la ricerca che restituisce TUTTI i candidati (per il menù a tendina)
          (data:Candidate[]) => {
            this.candidates = data;
          }
        )
    
    this.stateJiSer.getAllStateJobInterview().subscribe(
      (data:StateJobInterview[]) => {
        this.statejis = data;
      }
    )

    this.empService.getAllEmployees().subscribe(
      (data:Employee[]) => {
        this.employees = data;
      }
    )
  }

  //definisco il metodo
  addJobInterview(){

    const idCandidate = this.jobinterview.candidate?.idCandidate ?? this.candidate.idCandidate;
    const idStateJobInterview = this.jobinterview.stateJobInterview?.idStateJobInterview ?? this.stateji.idStateJobInterview;
    const idEmployee = this.jobinterview.employee?.idEmployee ?? this.employee.idEmployee;
    
    this.jobInterviewDataToSend = {
      idCandidate: this.candidate.idCandidate,
      date: this.jobinterview.date,
      idStateJobInterview: this.stateji.idStateJobInterview,
      outcome: this.jobinterview.outcome,
      notes: this.jobinterview.notes,
      idEmployee: this.employee.idEmployee
    };
    console.log("Stai per aggiungere un nuovo JOB INTERVIEW");
    this.jiSer.addJobInterview(this.jobInterviewDataToSend).subscribe(data => {
      console.log("Hai aggiunto il JOB INTERVIEW di " + data);
      this.router.navigate(['/alljobinterviews']);
    })
  }

}
