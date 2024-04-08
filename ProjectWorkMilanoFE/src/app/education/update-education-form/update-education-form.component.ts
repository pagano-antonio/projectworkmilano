import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { NgFor } from '@angular/common';
import { Education } from '../../model/Education';
import { EducationService } from '../../services/education.service';
import { EducationDegreeType } from '../../model/EducationDegreeType';
import { Candidate } from '../../model/Candidate';
import { EducationdegreetypeService } from '../../services/educationdegreetype.service';
import { CandidateService } from '../../services/candidate-service.service';

@Component({
  selector: 'app-update-education-form',
  standalone: true,
  imports: [FormsModule, NgFor],
  templateUrl: './update-education-form.component.html',
  styleUrl: './update-education-form.component.css'
})
export class UpdateEducationFormComponent {

  education:Education = new Education;
  educationList:Education[] = [];

  edt:EducationDegreeType = new EducationDegreeType;
  edtList:EducationDegreeType[] = [];

  candidate:Candidate = new Candidate;
  candidates:Candidate[] = [];

  constructor(private route:ActivatedRoute,
              private router:Router,
              private educationSer:EducationService,
              private edtSer:EducationdegreetypeService,
              private candidateSer:CandidateService){
  //Recupero dall'URL l'id che mi serve per farmi restituire i dati
  this.education.idEducation = this.route.snapshot.params['id'];
}

/*Adesso poniamo le condizioni d'esistenza del componente*/
ngOnInit(){
  console.log('Hai messo in moto! *clap clap*');
  this.route.params.subscribe(params => { //gli dico di stare attento a eventuali cambiamenti dell'ID dell'URL
    const id = +params['id']; //qui invece gli dico di convertire 'id' da String in number (il + sarebbe parseInt)
    if (!isNaN(id) && id !== undefined) { //se ID è un numero ed è definito, allora:
      this.education.idEducation = id; //l'ID sarà = a idEducation
      this.educationSer.getEducationById(id).subscribe(data => { //cerco l'Education per ID (altrimenti cosa modifico sotto? Niente)
        console.log('Hai cercato Education con ID ' + id);
        this.education = data;
        // Recupero dei dati relativi a Education Degree Type (in sostanza collego le foreign keys)
        this.edt = this.education.educationDegreeType;
        // Recupero dei dati relativi al candidato
        this.candidate = this.education.candidate;
      });
      this.edtSer.getAllEducationDegreeTypes().subscribe( //recupero tutti gli EDT per il menù a tendina
        (data: EducationDegreeType[]) => {
          this.edtList = data;
        }
      )
      this.candidateSer.getAllCandidates().subscribe( //faccio lo stesso per il menù a tendina di Candidate
        (data: Candidate[]) => {
          this.candidates = data;
        }
      )
    } else {
      console.error('ID Job Interview non valido');
      // Gestisci il caso in cui l'ID Job Interview non sia valido
    }
  });
}

updateEducation(){
  console.log('Sei in Update Education');
  console.log('Education: ' + this.education.idEducation);
  this.educationSer.updateEducation(this.education).subscribe (data => {
    console.log(data);
    this.router.navigate(['/updatesuccess']);
  })
}

}
