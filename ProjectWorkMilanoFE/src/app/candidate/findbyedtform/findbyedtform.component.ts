import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { EducationDegreeType } from '../../model/EducationDegreeType';
import { Router } from '@angular/router';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';
import { EducationdegreetypeService } from '../../services/educationdegreetype.service';

@Component({
  selector: 'app-findbyedtform',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './findbyedtform.component.html',
  styleUrl: './findbyedtform.component.css'
})
export class FindbyedtformComponent {

  /*Creo un oggetto di tipo Candidate E una lista, perché è una lista che mi serve per
  raccogliere i risultati */
  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  edt:EducationDegreeType = new EducationDegreeType;
  edts:EducationDegreeType[] = [];

  edty:number = this.edt.idEducationDegreeType;

  /*inizializzo nel costruttore il Service e il Router che mi serve per inviare la richiesta
  al BE*/
  constructor(private candidateSer:CandidateService, private edtSer:EducationdegreetypeService, private router:Router){}

  ngOnInit(){
    this.edtSer.getAllEducationDegreeTypes().subscribe(
      (data:EducationDegreeType[]) => {
        this.edts = data;
      }
    )
  }

  /*Adesso posso impostare il metodo*/
  searchCandidateByEDT(){
    //controllo che il metodo venga evocato correttamente
    console.log("Stai cercando tutti i CANDIDATES che hanno questo EDT " + this.edt.idEducationDegreeType);
    //formulo la richiesta
    this.candidateSer.getCandidateByIdEdType(this.edty).subscribe(
      //specifico che i dati sono una lista di tipo CANDIDATE
      (data:Candidate[]) => {
        //se company non è vuoto
        if(this.edty != null){
        //assegno i dati alla lista candidates
        this.candidates = data;
        //reindirizzo verso la pagina dei risultati
        this.router.navigate(['findcandidatebyedtres', this.edty]);
        } else {
          console.log("Sembra che nessun CANDIDATE abbia questo EDT.");
        }
      }
    )
  }

}
