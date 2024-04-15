import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-findbyphoneform',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './findbyphoneform.component.html',
  styleUrl: './findbyphoneform.component.css'
})
export class FindbyphoneformComponent {

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  phone!:BigInt;

  constructor(private candidateSer:CandidateService, private router:Router){}

  searchCandidateByPhone(){
    console.log("Stai cercando i CANDIDATES che hanno il seguente PHONE: " + this.phone);
    this.candidateSer.getCandidateByPhone(this.phone).subscribe((data:Candidate[]) => {
      console.log("Hai mandato la richiesta con successo inserendo " + this.phone);
      if(this.phone != null){
        this.candidates = data;
        this.router.navigate(['/findcandidatebyphoneres', this.phone]);
      } else {
        console.error("Sembra che il PHONE inseritO non esista.");
        this.router.navigate(['/error']);
      }
    })
  }
}
