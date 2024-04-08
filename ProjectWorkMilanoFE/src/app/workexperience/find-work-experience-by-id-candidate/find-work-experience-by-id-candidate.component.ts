import { Component } from '@angular/core';
import { WorkExperience } from '../../model/WorkExperience';
import { ActivatedRoute, Router } from '@angular/router';
import { WorkexperienceService } from '../../services/workexperience.service';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';

@Component({
  selector: 'app-find-work-experience-by-id-candidate',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './find-work-experience-by-id-candidate.component.html',
  styleUrl: './find-work-experience-by-id-candidate.component.css'
})
export class FindWorkExperienceByIdCandidateComponent {

  workexp:WorkExperience = new WorkExperience;
  workexps:WorkExperience[] = [];

  idCandidate!:number; //ATTENZIONE: non è idCandidate.candidate

  constructor(private route:ActivatedRoute,
              private router:Router,
              private workExpService:WorkexperienceService){}
  
  /*Adesso dettiamo al componente le sue condizioni d'esistenza*/
  ngOnInit(){
    this.idCandidate = this.route.snapshot.params['id']; //prendo dall'URL l'ID e lo assegno a idCandidate
    this.getWorkExperienceByIdCandidate(this.idCandidate); //chiamo il metodo che sviluppo sotto per ottenere i dati
  }

  getWorkExperienceByIdCandidate(idCandidate:number){
    this.workExpService.getWorkExperienceByIdCandidate(idCandidate).subscribe( //chiamo la richiesta
      (data:WorkExperience[]) => { //assegno i dati a una lista di Work Experience
        console.log(data); //controllo che i dati vengano recuperati
        this.workexps = data; //inserisco i dati nella lista che ho dichiarato sopra e che è collegata al ngFor
      }
    )
  }

  goToUpdateWorkExperience(idWorkExperience:number){
    console.log("Hai selezionato Update Work Experience per l'ID " + idWorkExperience);
    this.router.navigate(['/updateworkexperience', idWorkExperience]);
  }

  deleteWorkExperience(idWorkExperience:number){
    console.log('Sei in Delete Work Experience');
    console.log('Cancelli ID n. ' + idWorkExperience);
    this.workExpService.deleteWorkExperience(idWorkExperience).subscribe(data => {
      console.log('Delete ' + data);
      this.router.navigate(['/deleted', idWorkExperience]);
    })
  }

}
