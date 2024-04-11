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
  styleUrls: ['./add-job-interview.component.css']
})
export class AddJobInterviewComponent {

  //creo un oggetto di tipo JobInterview con annessa Lista
  jobinterview: JobInterview = new JobInterview();
  jobinterviews: JobInterview[] = [];

  //creo un oggetto che possa contenere gli attributi di JobInterview da inviare
  jobInterviewDataToSend: any;

  //creo un oggetto Candidate per il <select> e anche una lista
  candidate: Candidate = new Candidate();
  candidates: Candidate[] = [];

  //creo un oggetto StateJobInterview per lo stesso motivo di sopra
  stateji: StateJobInterview = new StateJobInterview();
  statejis: StateJobInterview[] = [];

  //faccio lo stesso con Employee
  employee: Employee = new Employee();
  employees: Employee[] = [];

  //definisco anche un costruttore per poter usare il Router e i Service
  constructor(private router: Router, 
    private jiSer: JobinterviewService, 
    private candidateSer: CandidateService,
    private stateJiSer: StatejobinterviewService,
    private empService: EmployeeService) { }

  /*Devo dettare le condizioni d'esistenza del componente, perché devo richiamare i CANDIDATI
  lo STATE JOB INTERVIEW e gli EMPLOYEES*/
  ngOnInit(){
    /*<select> di Candidate: devo richiamare TUTTI i Candidate */
    this.candidateSer.getAllCandidates().subscribe(
          (data:Candidate[]) => {
            this.candidates = data; //assegno i dati trovati alla lista (come con add.ModelAttribute)
            this.jobinterview.candidate = this.candidates[0]; //specifico che la lista è = a jobinterview.candidate e imposto [0], il primo elemento, come punto di partenza. Questo mi serve per attivare il collegamento con le foreign keys!
          }
        )

    /*<select> di StateJobInterview. Il procedimento è lo stesso spiegato sopra */
    this.stateJiSer.getAllStateJobInterview().subscribe(
      (data:StateJobInterview[]) => {
        this.statejis = data;
        this.jobinterview.stateJobInterview = this.statejis[0];
      }
    )

    /*<select> di Employee. Stesso procedimento di sopra */
    this.empService.getAllEmployees().subscribe(
      (data:Employee[]) => {
        this.employees = data;
        this.jobinterview.employee = this.employees[0];
      }
    )
  }

  //definisco il metodo:
  addJobInterview() {
    /*creo una "capsula" per definire chiaramente i nomi degli attributi che vanno inviati, 
    altrimenti l'invio non funziona, perché qui in Angular gli attributi nelle classi hanno
    "_" davanti. Questo è obbligatorio, ma in Java non è presente e rende i nomi degli
    attributi differenti. Creare la capsula sotto mi aiuta a ovviare questo problema.*/
    this.jobInterviewDataToSend = {
      candidate: this.jobinterview.candidate,
      date: this.jobinterview.date,
      stateJobInterview: this.jobinterview.stateJobInterview,
      outcome: this.jobinterview.outcome,
      notes: this.jobinterview.notes,
      employee: this.jobinterview.employee
    };

    console.log(this.jobInterviewDataToSend); //controllo che jobInterviewDataToSend sia pieno

    this.jiSer.addJobInterview(this.jobInterviewDataToSend).subscribe( //chiamo il metodo
      (response) => {
        console.log('Job Interview added successfully');
        this.router.navigate(['alljobinterviews']);
      },
      (error) => {
        console.log('Error adding Job Interview:', error);
      }
    )}
  }