import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-add-candidate',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './add-candidate.component.html',
  styleUrl: './add-candidate.component.css'
})
export class AddCandidateComponent {

  candidate:Candidate = new Candidate;

  constructor(private router:Router, private candidateService:CandidateService){}

  addCandidate(){
    console.log('Ci sei!');
    console.log('Candidato inviato:' + this.candidate.name);
    this.candidateService.addCandidate(this.candidate).subscribe(data => {
      console.log(data);
      this.router.navigate(['/allcandidates']);
    })
  }

}
