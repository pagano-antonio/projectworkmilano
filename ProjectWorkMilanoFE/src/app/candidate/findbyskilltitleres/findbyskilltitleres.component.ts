import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { ActivatedRoute, Router } from '@angular/router';
import { Candidate } from '../../model/Candidate';
import { Education } from '../../model/Education';
import { JobInterview } from '../../model/JobInterview';
import { Skill } from '../../model/Skill';
import { WorkExperience } from '../../model/WorkExperience';
import { CandidateService } from '../../services/candidate-service.service';
import { EducationService } from '../../services/education.service';
import { JobinterviewService } from '../../services/jobinterview.service';
import { SkillServiceService } from '../../services/skill-service.service';
import { WorkexperienceService } from '../../services/workexperience.service';
import { CandidateSkill } from '../../model/CandidateSkill';

@Component({
  selector: 'app-findbyskilltitleres',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './findbyskilltitleres.component.html',
  styleUrl: './findbyskilltitleres.component.css'
})
export class FindbyskilltitleresComponent {

  /*creo 2 variabili, una per riprendere il phone in ingresso e un'altra per i metodi
  nella pagina*/
  title!:String;
  id!:number;
  
  //creo i miei oggetti Candidate
  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  /*creo un costruttore, che mi serve a definire i Services e il Routing*/
  constructor(private route:ActivatedRoute,
              private router:Router,
              private candidateSer:CandidateService,
              private skillSer:SkillServiceService,
              private jobInterviewSer:JobinterviewService,
              private educationSer:EducationService,
              private workExpSer:WorkexperienceService
  ){
    //richiamo l'URL della richiesta e lo assegno a title
    this.title = this.route.snapshot.params['title'];
  }

  /*definisco le condizioni d'esistenza del componente (senza non funzionerà nulla)*/
  ngOnInit(){
    //riprendiamo il parametro in ingresso nell'URL della richiesta e lavoriamoci
    this.route.params.subscribe(params => {
      //dico che il parametro 'title' è = a quello nuovo che ho definito sopra
      this.title = params['title'];

      //adesso invochiamo nuovamente la richiesta per farci restituire la lista dei Candidati
      this.candidateSer.getCandidateBySkills(this.title).subscribe((data:Candidate[]) => {
        //assegno i dati recuperati alla lista candidates che popola l'HTML
        this.candidates = data;

      // Itera su ciascun candidato nella lista
      this.candidates.forEach(candidate => {
        // Imposta il valore della proprietà 'title' per ogni elemento dell'array 'Skills'
        candidate.candidateSkills.forEach(CandidateSkill => {
          CandidateSkill.skill.title = this.title;
        })
      })
    })
  })
}

  goToUpdateCandidate(id:number){
    console.log("Vuoi aggiornare il candidato con l'ID n. " + id);
      this.candidateSer.getCandidateById(id).subscribe(data => {
        if(id == data.idCandidate){
          this.router.navigate(['/updatecandidate', id]);
        } else {
          this.router.navigate(['/error']);
        }
      })
  }

  deleteCandidate(id:number){
    console.log("Stai eliminando il CANDIDATE  con l'ID n. " + id);
    this.candidateSer.deleteCandidate(id).subscribe(data => {
      console.log(data);
      this.router.navigate(['/deleted', id]);
    })
  }

  showCandidateSkills(id:number) {
    console.log("Vuoi vedere le SKILL del CANDIDATE con l'ID n. " + id);
    if (id) { // Verifica se l'ID del candidato è definito
      this.skillSer.getSkillsByIdCandidate(id).subscribe(
        (data: Skill[]) => {
          console.log(data);
          // Puoi fare qualsiasi cosa con i dati ricevuti, ad esempio memorizzarli in una variabile del componente
          // this.skills = data; // Supponendo che skills sia una variabile del componente in cui memorizzare le skill
          this.router.navigate(['/findbycandidateskillres', id]); // Naviga alla pagina dei risultati con l'ID del candidato
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

  showCandidateJobInterviews(id:number){
    console.log("Vuoi visualizzare le JOB INTERVIEWS del CANDIDATE con l'ID n. " + id);
    if(id){
      this.jobInterviewSer.getJobInterviewByIdCandidate(id).subscribe(
        (data: JobInterview[]) =>{
          console.log(data);
          this.router.navigate(['findjobinterviewbyidcandidate', id]);
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

  showCandidateEducation(id:number){
    console.log("Vuoi visualizzare l'EDUCATION del CANDIDATE con l'ID n. " + id); //Messaggio di controllo
    if(id){ //se id != 0
      this.educationSer.getEducationByIdCandidate(id).subscribe( //cerco l'istruzione per ID candidate
        (data: Education[]) =>{ //assegno i dati a una lista di Education
          console.log(data); //stampo i dati recuperati in console come controllo
          this.router.navigate(['findeducationbyidcandidate', id]); //mi faccio restituire la pagina dei risultati
        }
      )
    } else {
      console.error('Undefined Candidate ID');
      // Gestisci il caso in cui l'ID del candidato non sia definito
    }
  }

  showCandidateWorkExperience(id:number){
    console.log("Vuoi visualizzare la WORK EXPERIENCE del CANDIDATE con l'ID n. " + id); //controllo di essere nel metodo
    if(id){ //se id è diverso da 0, ovvero non è null
      this.workExpSer.getWorkExperienceByIdCandidate(id).subscribe( //richiamo il metodo che mi serve per ottenere l'esperienza lavorativa del candidato. 'subscribe' richiama i dati
        (data: WorkExperience[]) =>{ //assegnamo i dati richiamati a una lista di Work Experience
          console.log(data); //controlliamo che i dati siano effettivamente presenti
          this.router.navigate(['findworkexperiencebyidcandidate', id]); //diciamo al router di spostarsi nella pagina nelle []
        }
      )
    } else {
      console.error('Undefined Candidate ID'); //se id è 0, allora otterremo questo messaggio di errore
    }
  }

}
