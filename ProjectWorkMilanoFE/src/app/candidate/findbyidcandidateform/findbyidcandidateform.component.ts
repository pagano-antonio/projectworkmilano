import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { Router, RouterOutlet } from '@angular/router';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-findbyidcandidateform',
  standalone: true,
  imports: [FormsModule, RouterOutlet],
  templateUrl: './findbyidcandidateform.component.html',
  styleUrl: './findbyidcandidateform.component.css'
})
export class FindbyidcandidateformComponent {
  candidate:Candidate = new Candidate;
  idCandidate!:number;

  constructor(private router: Router, private candidateService:CandidateService) {}

  searchCandidateById(){
    console.log(this.idCandidate);
    this.candidateService.getCandidateById(this.idCandidate).subscribe(data => {
      console.log(data);
      if(this.idCandidate == data.idCandidate){
        this.candidate = data;
        this.router.navigate(['/findbyidcandidateres', this.candidate.idCandidate]);
      } else {
        this.router.navigate(['/error']);
      }
    })
  }


}
