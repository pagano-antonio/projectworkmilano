import { Component } from '@angular/core';
import { Skill } from '../../model/Skill';
import { SkillServiceService } from '../../services/skill-service.service';
import { ActivatedRoute, Router } from '@angular/router';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-updateskillform',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './updateskillform.component.html',
  styleUrl: './updateskillform.component.css'
})
export class UpdateskillformComponent {
  
  skill:Skill = new Skill;

  constructor(private route:ActivatedRoute, private skillService:SkillServiceService, private router:Router){
    /*Stiamo recuperando dall'URL della richiesta il parametro 'id' che ci serve per
    richiamare i dati a esso associati.*/
    this.skill.idSkill = this.route.snapshot.params['id'];
  }

  /*ngOnInit mi serve per visualizzare i dati che richiamo dall'URL. Sostituisce funzioni come
  <% Skill sList = (Skill) request.getAttribute("sList"); %> in JSP. */
  ngOnInit() {
    // Sottoscrizione ai cambiamenti dei parametri dell'URL
    this.route.params.subscribe(params => {
      const id = +params['id']; // Converte l'ID in numero
      if (!isNaN(id)) { // Verifica se l'ID è un numero valido
        this.skill.idSkill = id;
        this.skillService.getSkillById(id).subscribe(data => {
        this.skill = data; // Assegna i dettagli del candidato alla proprietà candidate
        })
    }
    })
  }

  updateSkill(){
    console.log('Ci sei!');
    console.log('Skill: ' + this.skill.title);
      this.skillService.updateSkill(this.skill).subscribe(data => {
        console.log(data);
       this.router.navigate(['/updatesuccess']);
      })
  }
}
