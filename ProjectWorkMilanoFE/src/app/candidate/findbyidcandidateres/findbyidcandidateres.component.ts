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
  skill:Skill = new Skill;
  
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

showCandidatesSkills(){
  console.log('Ci sei!');
  this.skillService.getSkillsByIdCandidate(this.skill.candidateSkills[0].candidate.idCandidate).subscribe(data => {
      console.log(data);
      this.skill = data;
      this.router.navigate(['/findbycandidateskillres', this.skill.candidateSkills[0].candidate.idCandidate]);
})
}

/*showCandidatesSkills(){
  console.log('Ci sei!');
  const skillTitle = this.candidate.candidateSkills[0].skill.title; // Supponendo che tu voglia prendere il primo titolo di skill
  console.log(skillTitle); // Assicurati di ottenere il titolo correttamente
  // Ora puoi utilizzare skillTitle come parametro per il tuo metodo getCandidateBySkills
  this.candidateService.getCandidateBySkills(skillTitle).subscribe(data => {
    console.log(data);
    this.candidate = data;
    // Supponendo che tu voglia navigare sulla base del titolo della skill
    this.router.navigate(['/findbycandidateskillres', skillTitle]);
  });
}*/

}
