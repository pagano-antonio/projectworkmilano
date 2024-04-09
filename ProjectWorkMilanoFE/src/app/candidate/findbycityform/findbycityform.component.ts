import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-findbycityform',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './findbycityform.component.html',
  styleUrl: './findbycityform.component.css'
})

export class FindbycityformComponent {

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  city:String = "";

  constructor(private candidateSer:CandidateService, private router:Router){}

  findCandidateByCity(){
    console.log("Sei in FIND CANDIDATE BY CITY. Bene!");
    this.candidateSer.getCandidateByCity(this.city).subscribe((data:Candidate[]) => {
      console.log("Hai mandato la richiesta con successo inserendo " + this.city + " come città.");
      if(this.city != null){
        this.candidates = data;
        this.router.navigate(['/findcandidatebycityres', this.city]);
      } else {
        console.error("Sembra che la CITY inserita non esista.");
        this.router.navigate(['/error']);
      }
    })
  }

}
