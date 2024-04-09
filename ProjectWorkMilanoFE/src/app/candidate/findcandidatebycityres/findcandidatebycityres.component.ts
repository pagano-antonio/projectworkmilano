import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { ActivatedRoute, Router } from '@angular/router';
import { SkillServiceService } from '../../services/skill-service.service';
import { JobinterviewService } from '../../services/jobinterview.service';
import { EducationService } from '../../services/education.service';
import { WorkexperienceService } from '../../services/workexperience.service';
import { Skill } from '../../model/Skill';
import { JobInterview } from '../../model/JobInterview';
import { Education } from '../../model/Education';
import { WorkExperience } from '../../model/WorkExperience';

@Component({
  selector: 'app-findcandidatebycityres',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './findcandidatebycityres.component.html',
  styleUrl: './findcandidatebycityres.component.css'
})
export class FindcandidatebycityresComponent {

  city!:String;
  idCandidate!:number;
  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  constructor(private candidateSer:CandidateService,
              private skillService: SkillServiceService, 
              private jiService: JobinterviewService,
              private educationSer:EducationService,
              private workExService:WorkexperienceService, 
              private route: ActivatedRoute, 
              private router:Router){

    //Recupera l'ID dall'URL che ha inviato la richiesta
    this.candidate.city = this.route.snapshot.params['city'];
  }

  ngOnInit() {
      /*Riprediamo i parametri nell'URL della richiesta*/
      this.route.params.subscribe(params => {
        
        this.city = params['city'];
          this.candidate.city = this.city;
          /*Adesso prendi la città e usala per farti restituire i dettagli del candidato interessato.*/
          this.candidateSer.getCandidateByCity(this.city).subscribe((data:Candidate[]) => {
          this.candidates = data;
          })
        
    })
  }

  goToUpdateCandidate(idCandidate:number){
    console.log("Vuoi aggiornare il candidato con l'ID n. " + idCandidate);
      this.candidateSer.getCandidateById(idCandidate).subscribe(data => {
        if(idCandidate == data.idCandidate){
          this.router.navigate(['/updatecandidate', idCandidate]);
        } else {
          this.router.navigate(['/error']);
        }
      })
  }

  deleteCandidate(idCandidate:number){
    console.log("Stai eliminando il CANDIDATE  con l'ID n. " + idCandidate);
    this.candidateSer.deleteCandidate(idCandidate).subscribe(data => {
      console.log(data);
      this.router.navigate(['/deleted', idCandidate]);
    })
  }

  showCandidateSkills(idCandidate:number) {
    console.log("Vuoi vedere le SKILL del CANDIDATE con l'ID n. " + idCandidate);
    if (idCandidate) { // Verifica se l'ID del candidato è definito
      this.skillService.getSkillsByIdCandidate(idCandidate).subscribe(
        (data: Skill[]) => {
          console.log(data);
          // Puoi fare qualsiasi cosa con i dati ricevuti, ad esempio memorizzarli in una variabile del componente
          // this.skills = data; // Supponendo che skills sia una variabile del componente in cui memorizzare le skill
          this.router.navigate(['/findbycandidateskillres', idCandidate]); // Naviga alla pagina dei risultati con l'ID del candidato
        },
        (error) => {
          console.error('Errore durante il recupero delle skill del candidato:', error);
          // Gestisci l'errore in base ai requisiti del tuo progetto
        }
      );
    } else {
      console.error('ID del candidato non definito');
      // Gestisci il caso in cui l'ID del candidato non sia definito
    }

  }

  showCandidateJobInterviews(idCandidate:number){
    console.log("Vuoi visualizzare le JOB INTERVIEWS del CANDIDATE con l'ID n. " + idCandidate);
    if(idCandidate){
      this.jiService.getJobInterviewByIdCandidate(idCandidate).subscribe(
        (data: JobInterview[]) =>{
          console.log(data);
          this.router.navigate(['findjobinterviewbyidcandidate', idCandidate]);
        },
        (error) => {
          console.error('Errore durante il recupero del colloquio del candidato:', error);
        }
      );
    } else {
    console.error('ID del candidato non definito');
    // Gestisci il caso in cui l'ID del candidato non sia definito
  }
  }

  showCandidateEducation(idCandidate:number){
    console.log("Vuoi visualizzare l'EDUCATION del CANDIDATE con l'ID n. " + idCandidate); //Messaggio di controllo
    if(idCandidate){ //se id != 0
      this.educationSer.getEducationByIdCandidate(idCandidate).subscribe( //cerco l'istruzione per ID candidate
        (data: Education[]) =>{ //assegno i dati a una lista di Education
          console.log(data); //stampo i dati recuperati in console come controllo
          this.router.navigate(['findeducationbyidcandidate', idCandidate]); //mi faccio restituire la pagina dei risultati
        }
      )
    } else {
      console.error('Undefined Candidate ID');
      // Gestisci il caso in cui l'ID del candidato non sia definito
    }
  }

  showCandidateWorkExperience(idCandidate:number){
    console.log("Vuoi visualizzare la WORK EXPERIENCE del CANDIDATE con l'ID n. " + idCandidate); //controllo di essere nel metodo
    if(idCandidate){ //se id è diverso da 0, ovvero non è null
      this.workExService.getWorkExperienceByIdCandidate(idCandidate).subscribe( //richiamo il metodo che mi serve per ottenere l'esperienza lavorativa del candidato. 'subscribe' richiama i dati
        (data: WorkExperience[]) =>{ //assegnamo i dati richiamati a una lista di Work Experience
          console.log(data); //controlliamo che i dati siano effettivamente presenti
          this.router.navigate(['findworkexperiencebyidcandidate', idCandidate]); //diciamo al router di spostarsi nella pagina nelle []
        }
      )
    } else {
      console.error('Undefined Candidate ID'); //se id è 0, allora otterremo questo messaggio di errore
    }
  }

}
