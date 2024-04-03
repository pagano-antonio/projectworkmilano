import { Component } from '@angular/core';
import { NgIf } from '@angular/common';
import { NgFor } from '@angular/common';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { Skill } from '../../../model/Skill';
import { SkillServiceService } from '../../../services/skill-service.service';
import { Candidate } from '../../../model/Candidate';

@Component({
  selector: 'app-findbycandidateskillres',
  standalone: true,
  imports: [NgIf, NgFor, RouterOutlet],
  templateUrl: './findbycandidateskillres.component.html',
  styleUrl: './findbycandidateskillres.component.css'
})
export class FindbycandidateskillresComponent {

  candidateId!: number;
  candidate: Candidate = new Candidate;
  skills: Skill[] = []; // Array per memorizzare le skill associate al candidato

  constructor(private route: ActivatedRoute, private router:Router, private skillService:SkillServiceService) { }

  ngOnInit(): void {
    // Ottieni l'ID del candidato dall'URL
    this.candidateId = this.route.snapshot.params['id'];
    
    // Chiamata al metodo del servizio per ottenere le skill associate al candidato
    this.getSkillsByCandidateId(this.candidateId);

  }

  getSkillsByCandidateId(candidateId: number): void {
    // Chiamata al servizio per ottenere le skill associate al candidato
    // Supponendo che il metodo del servizio restituisca un Observable<Skill[]>
    // e si chiami getSkillsByIdCandidate(candidateId: number)
    // Assicurati di importare correttamente il servizio SkillService nel componente
    this.skillService.getSkillsByIdCandidate(candidateId).subscribe(
      (data: Skill[]) => {
        this.skills = data; // Memorizza le skill ottenute dall'API
      },
      (error) => {
        console.error('Errore durante il recupero delle skill del candidato:', error);
        // Gestisci l'errore in base ai requisiti del tuo progetto
      }
    );
  }

  goToUpdateSkills(skillId: number): void {
    console.log('Ci sei!');
    this.router.navigate(['/updateskillform', skillId]);
  }

  deleteCandidateSkill(skillId: number): void {
    console.log('Ci sei!');
    this.skillService.deleteSkill(skillId).subscribe(data => {
      console.log(data);
      this.router.navigate(['/deleted', skillId]);
    });
  }


}
