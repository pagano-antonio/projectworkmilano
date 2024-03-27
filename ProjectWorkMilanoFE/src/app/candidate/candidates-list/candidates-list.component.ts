import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NgFor } from '@angular/common';
import { CandidateService } from '../../services/candidate-service.service';
import { Candidate } from '../../model/Candidate';
@Component({
  selector: 'app-candidates-list',
  standalone: true,
  imports: [NgFor],
  templateUrl: './candidates-list.component.html',
  styleUrls: ['./candidates-list.component.css']
})
export class AllCandidatesComponent implements OnInit {
  candidates: any[] = []; // Array di candidati
  candidate:Candidate = new Candidate;

  constructor(private router: Router, private candidateService: CandidateService) { }

  ngOnInit(): void {
    this.getAllCandidates(); // Chiama il metodo per ottenere tutti i candidati quando il componente è pronto
  }

  getAllCandidates(): void {
    this.candidateService.getAllCandidates().subscribe(data => {
      this.candidates = data; // Assegna i candidati ottenuti dal servizio all'array di candidati
    });
  }

  updateCandidate(id: number): void {
    this.router.navigate(['/updatecandidate', id]); // Reindirizza alla pagina di aggiornamento del candidato
  }

  deleteCandidate() {
    console.log('Ci sei!');
  this.candidateService.deleteCandidate(this.candidate.idCandidate).subscribe(data => {
    console.log(data);
    this.router.navigate(['/deleted', this.candidate.idCandidate]);
  })
  }

  showCandidateSkills(id: number): void {
    this.router.navigate(['/findbycandidateskillres', id]); // Reindirizza alla pagina delle competenze del candidato
  }

  showJobInterviews(id: number): void {
    // Implementa la logica per mostrare gli incontri di lavoro del candidato con l'ID specificato
  }

  showEducation(id: number): void {
    // Implementa la logica per mostrare l'istruzione del candidato con l'ID specificato
  }

  showWorkExperience(id: number): void {
    // Implementa la logica per mostrare l'esperienza lavorativa del candidato con l'ID specificato
  }
}
