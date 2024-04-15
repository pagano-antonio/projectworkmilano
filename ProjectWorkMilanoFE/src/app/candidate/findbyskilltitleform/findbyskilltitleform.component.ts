import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-findbyskilltitleform',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './findbyskilltitleform.component.html',
  styleUrl: './findbyskilltitleform.component.css'
})
export class FindbyskilltitleformComponent {

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  title!:String;

  constructor(private candidateSer:CandidateService, private router:Router){}

  searchCandidateBySkill(){
    console.log("Stai cercando i CANDIDATES che hanno la seguente SKILL: " + this.title);
    this.candidateSer.getCandidateBySkills(this.title).subscribe((data:Candidate[]) => {
      console.log("Hai mandato la richiesta con successo inserendo " + this.title);
      if(this.title != null){
        this.candidates = data;
        this.router.navigate(['/findcandidatebyskillres', this.title]);
      } else {
        console.error("Sembra che la SKILL inserita non esista.");
        this.router.navigate(['/error']);
      }
    })
  }

}
