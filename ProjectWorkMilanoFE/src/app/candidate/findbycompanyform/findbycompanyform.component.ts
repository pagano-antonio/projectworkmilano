import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-findbycompanyform',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './findbycompanyform.component.html',
  styleUrl: './findbycompanyform.component.css'
})
export class FindbycompanyformComponent {

  /*Creo un oggetto di tipo Candidate E una lista, perché è una lista che mi serve per
  raccogliere i risultati */
  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  //inizializzo company (è l'input type nel form)
  company!:String;

  /*inizializzo nel costruttore il Service e il Router che mi serve per inviare la richiesta
  al BE*/
  constructor(private candidateSer:CandidateService, private router:Router){}

  /*Adesso posso impostare il metodo*/
  searchCandidateByCompany(){
    //controllo che il metodo venga evocato correttamente
    console.log("Stai cercando tutti i CANDIDATES che hanno lavorato per " + this.company);
    //formulo la richiesta
    this.candidateSer.getCandidateByCompany(this.company).subscribe(
      //specifico che i dati sono una lista di tipo CANDIDATE
      (data:Candidate[]) => {
        //se company non è vuoto
        if(this.company != null){
        //assegno i dati alla lista candidates
        this.candidates = data;
        //reindirizzo verso la pagina dei risultati
        this.router.navigate(['findcandidatebycompanyres', this.company]);
        } else {
          console.log("Sembra che nessun CANDIDATE abbia lavorato per questa COMPANY.");
        }
      }
    )
  }

}
