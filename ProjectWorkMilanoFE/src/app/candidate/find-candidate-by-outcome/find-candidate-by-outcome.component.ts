import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-find-candidate-by-outcome',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './find-candidate-by-outcome.component.html',
  styleUrl: './find-candidate-by-outcome.component.css'
})
export class FindCandidateByOutcomeComponent {

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  outcome!:number;
  error:String = "The search found 0 results.";

  constructor(private router:Router, private candidateSer:CandidateService){}

  searchCandidateByOutcome(){
    console.log("Stai cercando i CANDIDATES che hanno avuto un punteggio di " + this.outcome);

    this.candidateSer.getCandidateByOutcome(this.outcome).subscribe(
      (data:Candidate[]) => {
        if(this.outcome === -1){
          this.error;
        } else{
          this.candidates = data;
          this.router.navigate(['findcandidatebyoutcomeres/' + this.outcome]);
        }
      }
    )
  }

}
