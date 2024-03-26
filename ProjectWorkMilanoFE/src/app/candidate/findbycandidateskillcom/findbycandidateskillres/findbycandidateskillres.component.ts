import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Skill } from '../../../model/Skill';

@Component({
  selector: 'app-findbycandidateskillres',
  standalone: true,
  imports: [],
  templateUrl: './findbycandidateskillres.component.html',
  styleUrl: './findbycandidateskillres.component.css'
})
export class FindbycandidateskillresComponent {

  skill:Skill = new Skill;

  constructor(private route:ActivatedRoute) {
    this.skill.candidateSkills[0].candidate.idCandidate = this.route.snapshot.params['id'];
  }

}
