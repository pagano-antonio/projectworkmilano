import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-add-candidate',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './add-candidate.component.html',
  styleUrl: './add-candidate.component.css'
})
export class AddCandidateComponent {

  candidate:Candidate = new Candidate;

  candidateDataToSend: any; // Dichiarazione della proprietà che mi serve per inviare i dati correttamente al DB

  constructor(private router:Router, private candidateService:CandidateService){}

  addCandidate(){
    /*creo una costante per mappare i nomi degli attributi per non creare problemi
    nell'invio dei dati al DB. Il problema nasce dal fatto che i nomi degli attributi
    della classe in Java sono diversi da quelli in TypeScript (per via del '_'), ma
    se voglio che gli attributi della classe siano 'private' allora DEVONO avere '_'.*/
    this.candidateDataToSend = {
      idCandidate: this.candidate.idCandidate,
      address: this.candidate.address,
      birthday: this.candidate.birthday,
      birthPlace: this.candidate.birthPlace,
      city: this.candidate.city,
      email: this.candidate.email,
      name: this.candidate.name,
      phone: this.candidate.phone,
      surname: this.candidate.surname
    };
    console.log('Ci sei!');
    console.log('Candidato inviato:' + this.candidate.name);
    this.candidateService.addCandidate(this.candidateDataToSend).subscribe(data => {
      console.log(data);
      this.router.navigate(['/allcandidates']);
    })
  }

}
