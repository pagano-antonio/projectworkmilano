import { Component } from '@angular/core';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { Candidate } from '../../model/Candidate';
import { Education } from '../../model/Education';
import { JobInterview } from '../../model/JobInterview';
import { Skill } from '../../model/Skill';
import { CandidateService } from '../../services/candidate-service.service';
import { SkillServiceService } from '../../services/skill-service.service';
import { JobinterviewService } from '../../services/jobinterview.service';
import { EducationService } from '../../services/education.service';
import { WorkexperienceService } from '../../services/workexperience.service';
import { WorkExperience } from '../../model/WorkExperience';

@Component({
  selector: 'app-findbyidcandidateres',
  standalone: true,
  imports: [RouterOutlet, FormsModule, NgFor],
  templateUrl: './findbyidcandidateres.component.html',
  styleUrl: './findbyidcandidateres.component.css'
})
export class FindbyidcandidateresComponent {
  candidate:Candidate = new Candidate;
  
  constructor(private router: Router, 
              private route:ActivatedRoute, 
              private candidateService: CandidateService, 
              private skillService: SkillServiceService, 
              private jiService: JobinterviewService,
              private educationSer:EducationService,
              private workExService:WorkexperienceService) {
    this.candidate.idCandidate = this.route.snapshot.params['id'];
    }

  /*ngOnInit è il momento in cui puoi preparare il tuo componente per funzionare 
  correttamente. Una volta che ngOnInit è stato chiamato, il componente è pronto per 
  essere utilizzato. In termini più tecnici, è un hook del ciclo di vita del componente Angular. 
  Viene chiamata una sola volta dopo che il componente è stato creato.*/
  ngOnInit() {
      /*Questo è l'aggancio all'URL della richiesta, che dipende dai parametri in ingresso.
      In questo caso, ci riferiamo a 'findbyidcandidateres/:id' e dunque al parametro 'id'.*/
      this.route.params.subscribe(params => {
        /*'id' è una stringa perché gli URL sono stringhe, ma a noi serve un numero. Con il +
        rendiamo 'id' un numero.*/
        const id = +params['id'];
        /*Se 'id' è numero. 'isNaN' significa 'is Not a Number' ed è 'true' di default. In questo
        caso invece gli stiamo dicendo se 'isNaN' è falso, allora fai questo.*/
        if (!isNaN(id)) {
          /*se 'id' è un numero valido assegnalo a 'idCandidate' di 'candidate'.*/
          this.candidate.idCandidate = id;
          /*Adesso prendi l'ID e usalo per farti restituire i dettagli del candidato interessato.*/
          this.candidateService.getCandidateById(id).subscribe(data => {
          this.candidate = data;
          })
      }
})
  }

  goToUpdateCandidate(){
  console.log('Ci sei!');
    this.candidateService.getCandidateById(this.candidate.idCandidate).subscribe(data => {
      if(this.candidate.idCandidate == data.idCandidate){
        this.router.navigate(['/updatecandidate', this.candidate.idCandidate]);
      } else {
        this.router.navigate(['/error']);
      }
    })
  }

deleteCandidateOnResPage(){
  console.log('Ci sei!');
  this.candidateService.deleteCandidate(this.candidate.idCandidate).subscribe(data => {
    console.log(data);
    this.router.navigate(['/deleted', this.candidate.idCandidate]);
  })
}

showCandidateSkills() {
  console.log('Ci sei!');
  const id = this.candidate.idCandidate; // Ottieni l'ID del candidato
  if (id) { // Verifica se l'ID del candidato è definito
    this.skillService.getSkillsByIdCandidate(id).subscribe(
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

showCandidateJobInterviews(){
  console.log('Sei in showCandidateJobInterviews');
  const id = this.candidate.idCandidate;
  if(id){
    this.jiService.getJobInterviewByIdCandidate(id).subscribe(
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

showCandidateEducation(){
  console.log('Sei in Show Candidate Education'); //Messaggio di controllo
  const id = this.candidate.idCandidate; //creo una costante che contenga idCandidate
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

showCandidateWorkExperience(){
  console.log('Sei in Show Candidate Work Experience!'); //controllo di essere nel metodo
  const id = this.candidate.idCandidate; //creo una costante che contenga ID Candidate
  if(id){ //se id è diverso da 0, ovvero non è null
    this.workExService.getWorkExperienceByIdCandidate(id).subscribe( //richiamo il metodo che mi serve per ottenere l'esperienza lavorativa del candidato. 'subscribe' richiama i dati
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
