import { Component } from '@angular/core';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { Candidate } from '../../model/Candidate';
import { Skill } from '../../model/Skill';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';
import { SkillServiceService } from '../../services/skill-service.service';

@Component({
  selector: 'app-findbyidcandidateres',
  standalone: true,
  imports: [RouterOutlet, FormsModule],
  templateUrl: './findbyidcandidateres.component.html',
  styleUrl: './findbyidcandidateres.component.css'
})
export class FindbyidcandidateresComponent {
  candidate:Candidate = new Candidate;
  
  constructor(private router: Router, private route:ActivatedRoute, private candidateService: CandidateService, private skillService: SkillServiceService) {
    this.candidate.idCandidate = this.route.snapshot.params['id'];
    }

  ngOnInit() {
      // Sottoscrizione ai cambiamenti dei parametri dell'URL
      this.route.params.subscribe(params => {
        const id = +params['id']; // Converte l'ID in numero
        if (!isNaN(id)) { // Verifica se l'ID è un numero valido
          this.candidate.idCandidate = id;
          this.candidateService.getCandidateById(id).subscribe(data => {
          this.candidate = data; // Assegna i dettagli del candidato alla proprietà candidate
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
}
