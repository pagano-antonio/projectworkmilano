import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { ActivatedRoute, Router } from '@angular/router';
import { WorkExperience } from '../../model/WorkExperience';
import { WorkexperienceService } from '../../services/workexperience.service';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-update-work-experience-form',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './update-work-experience-form.component.html',
  styleUrl: './update-work-experience-form.component.css'
})
export class UpdateWorkExperienceFormComponent {

  workexp:WorkExperience = new WorkExperience;

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  constructor(private route:ActivatedRoute,
              private router:Router,
              private workExpService:WorkexperienceService,
              private candidateSer:CandidateService){
    /*Assegniamo l'ID dell'URL a idWorkExperience*/
    //this.workexp.idWorkExperience = this.route.snapshot.params['id'];

  }

  /*Dettiamo le condizioni di esistenza del componente - senza non funziona*/
  ngOnInit(){
    this.route.params.subscribe(params => { //Prendiamo l'ID dall'URL
      const id = +params['id']; //Convertiamolo in numero
      if(!isNaN(id)){ //se ID È un numero
        this.workexp.idWorkExperience = id; //lo assegnamo a idWorkExperience
        this.workExpService.getWorkExperienceById(id).subscribe(data => { //richiamiamo i dati associati all'ID
          this.workexp = data; //Assegniamo i dati a WorkExperience
          this.candidate = this.workexp.candidate; //Colleghiamo WE e Candidate
        })
        this.candidateSer.getAllCandidates().subscribe( //richiamiamo anche la ricerca che restituisce TUTTI i candidati (per il menù a tendina)
          (data:Candidate[]) => {
            this.candidates = data;
          }
        )
      }
    })
  }

  updateWorkExperience(){
    console.log("Sei in Update WE"); //controlliamo che il metodo parta
    console.log("Work Experience n. " + this.workexp.idWorkExperience); //controlliamo che prenda anche i dati
    this.workExpService.updateWorkExperience(this.workexp).subscribe(data =>{
      console.log(data); //controlliamo che i dati vengano presi quando viene effettuata la ricerca
      this.router.navigate(['/updatesuccess']);
    })
  }

}
