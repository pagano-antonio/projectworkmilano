import { Component } from '@angular/core';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { Candidate } from '../../model/Candidate';
import { CandidateService } from '../../services/candidate-service.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-findbyidcandidateres',
  standalone: true,
  imports: [RouterOutlet, FormsModule],
  templateUrl: './findbyidcandidateres.component.html',
  styleUrl: './findbyidcandidateres.component.css'
})
export class FindbyidcandidateresComponent {
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
}
