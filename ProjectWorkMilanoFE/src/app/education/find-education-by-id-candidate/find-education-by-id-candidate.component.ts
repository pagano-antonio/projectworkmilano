import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { Education } from '../../model/Education';
import { EducationService } from '../../services/education.service';

@Component({
  selector: 'app-find-education-by-id-candidate',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './find-education-by-id-candidate.component.html',
  styleUrl: './find-education-by-id-candidate.component.css'
})
export class FindEducationByIdCandidateComponent {

  education: Education = new Education;
  educationList:Education[] = [];
  idCandidate!:number;

  constructor(private route:ActivatedRoute,
              private router: Router,
              private educationSer:EducationService){
  }

  /*Adesso dettiamo le condizioni che servono a questo componente per funzionare*/
  ngOnInit(){
    this.idCandidate = this.route.snapshot.params['id']; // Recupera l'ID del candidato dall'URL
    this.getEducationByIdCandidate(this.idCandidate); // Chiama il metodo per ottenere l'istruzione del candidato
  }

  getEducationByIdCandidate(idCandidate:number){
    this.educationSer.getEducationByIdCandidate(idCandidate).subscribe(
      (data: Education[]) => {
        console.log(data);
        this.educationList = data;
      },
      (error) => {
        console.error('Errore durante il recupero delle job interviews del candidato:', error);
      }
    )
  }

  deleteEducation(idEducation:number){ //NOTA: ho chiamato questo int idEducation, ma non è this.education.idEducation. È slegato.
    console.log('Sei in Delete Education');
    console.log('Cancelli ID n. ' + idEducation);
    this.educationSer.deleteEducation(idEducation).subscribe(data => {
      console.log('Delete ' + data);
      this.router.navigate(['/deleted', idEducation]);
    })
  }

  goToUpdateEducation(idEducation:number){
    console.log('Hai premuto Update per ID ' + idEducation);
    this.router.navigate(['/updateeducationform', idEducation]);
  }

}
