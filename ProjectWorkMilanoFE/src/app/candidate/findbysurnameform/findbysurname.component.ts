import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-findbysurname',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './findbysurname.component.html',
  styleUrl: './findbysurname.component.css'
})
export class FindbysurnameComponent {

  //creo un Candidato e una lista di Candidati
  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  //creo la variabile in ingresso del form
  surname!:String;

  //inizializzo il servizio e il routing
  constructor(private candidateSer:CandidateService, private router:Router){}

  //lavoro al metodo
  searchCandidateBySurname(){
    console.log("Stai cercando i Candidati con il seguente SURNAME: " + this.surname);
    //invoco la richiesta
    this.candidateSer.getCandidateBySurname(this.surname).subscribe(
      //specifico che i dati sono di tipo Candidate[]
      (data:Candidate[]) => {
        //se il surname non è null
        if(this.surname != null){
          //prendo i dati e li metto in candidates
          this.candidates = data;
          //dico alla pagina di andare verso la pagina dei risultati
          this.router.navigate(['findcandidatebysurnameres', this.surname]);
        } else {
          console.error("Sembra che " + this.surname + " non sia presente nel DB.");
        }
      }
    )
  }
}
