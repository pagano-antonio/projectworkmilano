import { Component } from '@angular/core';
import { NgFor } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { JobInterview } from '../../model/JobInterview';
import { Candidate } from '../../model/Candidate';
import { ActivatedRoute, Router } from '@angular/router';
import { JobinterviewService } from '../../services/jobinterview.service';

@Component({
  selector: 'app-findjobinterviewbyidcandidate',
  standalone: true,
  imports: [NgFor, FormsModule],
  templateUrl: './findjobinterviewbyidcandidate.component.html',
  styleUrl: './findjobinterviewbyidcandidate.component.css'
})
export class FindjobinterviewbyidcandidateComponent {

  candidateId!: number;
  candidate:Candidate = new Candidate;
  jobinterview: JobInterview = new JobInterview;
  jobInterviews: JobInterview[] = [];
  candidateDataToSend: any; // Dichiarazione della proprietà che mi serve per inviare i dati correttamente al DB

  constructor(private route: ActivatedRoute, private router:Router, private jobInterviewSer: JobinterviewService) {
        this.candidate.idCandidate = this.route.snapshot.params['id'];
   }


  ngOnInit(): void {
    // Ottieni l'ID del candidato dall'URL
    this.candidateId = this.route.snapshot.params['id'];
    
    // Chiamata al metodo del servizio per ottenere le skill associate al candidato
    this.getJobInterviewByCandidateId(this.candidateId);
  }

  getJobInterviewByCandidateId(candidateId: number){
    this.jobInterviewSer.getJobInterviewByIdCandidate(candidateId).subscribe(
      (data: JobInterview[]) => {
        console.log(data);
        this.jobInterviews = data;
      },
      (error) => {
        console.error('Errore durante il recupero delle job interviews del candidato:', error);
      }
    );
}

  goToUpdateJobInterview(idJobInterview:number){
    console.log('sei in goToUpdateJobInterview');
    console.log(idJobInterview);
    this.router.navigate(['/updatejobinterviewform', idJobInterview]);
  }

  deleteJobInterview(idJobInterview:number){
    console.log('sei in Delete JI');
    console.log('ID ' + idJobInterview);
    this.jobInterviewSer.deleteJobInterview(idJobInterview).subscribe(data => {
      console.log('Delete ' + data);
      this.router.navigate(['/deleted', idJobInterview]);
    })
  }
} 
