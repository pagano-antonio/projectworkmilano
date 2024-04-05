import { Component } from '@angular/core';
import { JobInterview } from '../../model/JobInterview';
import { Candidate } from '../../model/Candidate';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { StateJobInterview } from '../../model/StateJobInterview';
import { Employee } from '../../model/Employee';
import { ActivatedRoute, Router } from '@angular/router';
import { JobinterviewService } from '../../services/jobinterview.service';
import { CandidateService } from '../../services/candidate-service.service';
import { StatejobinterviewService } from '../../services/statejobinterview.service';
import { EmployeeService } from '../../services/employee.service';

@Component({
  selector: 'app-update-job-interview-form',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './update-job-interview-form.component.html',
  styleUrl: './update-job-interview-form.component.css'
})
export class UpdateJobInterviewFormComponent {

  jobinterview:JobInterview = new JobInterview;
  jobinterviews:JobInterview[] = [];

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  stateji:StateJobInterview = new StateJobInterview;
  statejis:StateJobInterview[] = [];

  employee:Employee = new Employee;
  employees:Employee[] = [];

  constructor(private route:ActivatedRoute, 
              private router:Router, 
              private jiService:JobinterviewService,
              private candidateSer:CandidateService,
              private sji:StatejobinterviewService,
              private employeeSer:EmployeeService){

    //Recupero dall'URL l'id che mi serve per farmi restituire i dati
    this.jobinterview.idJobInterview = this.route.snapshot.params['id'];
  }

  /*Questa è la chiave d'accensione del componente*/
  ngOnInit(){
    console.log('Hai messo in moto.');
    this.route.params.subscribe(params => {
      const id = +params['id'];
      if (!isNaN(id) && id !== undefined) {
        this.jobinterview.idJobInterview = id;
        this.jiService.getJobInterviewById(id).subscribe(data => {
          console.log('Hai assegnato i dati a Job Interview');
          this.jobinterview = data;
          // Recupero dei dati relativi al candidato
          this.candidate = this.jobinterview.candidate;
          // Recupero dei dati relativi allo stato dell'intervista
          this.stateji = this.jobinterview.stateJobInterview;
          // Recupero dei dati relativi all'impiegato
          this.employee = this.jobinterview.employee;
        });
        this.candidateSer.getAllCandidates().subscribe(
          (data: Candidate[]) => {
            this.candidates = data;
          }
        )
        this.sji.getAllStateJobInterview().subscribe(
          (data: StateJobInterview[]) => {
            this.statejis = data;
          }
        )
        this.employeeSer.getAllEmployees().subscribe(
          (data: Employee[]) => {
            this.employees = data;
          }
        )
      } else {
        console.error('ID Job Interview non valido');
        // Gestisci il caso in cui l'ID Job Interview non sia valido
      }
    });
  }

  updateJobInterview(){
    console.log('sei in Update Job Interview');
    console.log('Job Interview: ' + this.jobinterview.idJobInterview);
    this.jiService.updateJobInterview(this.jobinterview).subscribe (data => {
      console.log(data);
      this.router.navigate(['/updatesuccess']);
    })
  }

}
