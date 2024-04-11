import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { JobInterview } from '../../model/JobInterview';
import { Router } from '@angular/router';
import { JobinterviewService } from '../../services/jobinterview.service';

@Component({
  selector: 'app-all-job-interviews',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './all-job-interviews.component.html',
  styleUrl: './all-job-interviews.component.css'
})
export class AllJobInterviewsComponent implements OnInit {

  //creo la lista di Job Interviews e l'oggetto che mi servono per il NgFor
  jobinterviews:JobInterview[] = [];
  jobinterview:JobInterview = new JobInterview;

  //definisco il costruttore del metodo
  constructor(private router:Router, private jiSer:JobinterviewService) {}

  //definisco le condizioni d'esistenza del componente
  ngOnInit(){
    this.getAllJobInterviews();
  }

  getAllJobInterviews(){
    this.jiSer.getAllJobInterviews().subscribe(
      (data:JobInterview[]) => {
        this.jobinterviews = data;
      }
    )
  }

  updateJobInterview(id:number) {
    this.router.navigate(['/updatejobinterviewform', id]); // Reindirizza alla pagina di aggiornamento del candidato
  }

  deleteJobInterview(id:number) {
    console.log("Stai eliminando la Job Interview con l'ID n. " + id);
    this.jiSer.deleteJobInterview(id).subscribe(data => {
    console.log("Hai elminato il seguente job interview:" + data);
    this.router.navigate(['/deleted', id]);
  })
  }
}
