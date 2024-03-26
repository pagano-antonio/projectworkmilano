import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { ActivatedRoute, Router } from '@angular/router';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-updatecandidateform',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './updatecandidateform.component.html',
  styleUrl: './updatecandidateform.component.css'
})
export class UpdatecandidateformComponent {
  
  candidate:Candidate = new Candidate;

  constructor(private router: Router, private route:ActivatedRoute, private candidateService: CandidateService) {
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
    
  updateCandidate(){
    console.log('Ci sei!');
      this.candidateService.updateCandidate(this.candidate).subscribe(data => {
        console.log(data);
       this.router.navigate(['/findbyidcandidateres', this.candidate.idCandidate]);
      })
  }
}
