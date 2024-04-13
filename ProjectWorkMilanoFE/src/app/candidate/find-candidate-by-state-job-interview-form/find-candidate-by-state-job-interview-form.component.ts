import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-find-candidate-by-state-job-interview-form',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './find-candidate-by-state-job-interview-form.component.html',
  styleUrl: './find-candidate-by-state-job-interview-form.component.css'
})
export class FindCandidateByStateJobInterviewFormComponent {

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  idStateJobInterview!:number;

  constructor(private router:Router, private candidateSer:CandidateService){}

  searchCandidateByStateJobInterview(){
    console.log("Stai cercando i CANDIDATE che hanno il seguente ID State Job Interview: " + this.idStateJobInterview);

    this.candidateSer.getCandidateByStateJobInterview(this.idStateJobInterview).subscribe(
      (data:Candidate[]) => {
        console.log("I dati recuperati sono: " + data);
        this.candidates = data;
        this.router.navigate(['/findcandidatebystatejobinterviewres', this.idStateJobInterview]);
      }
    )
  }
}
