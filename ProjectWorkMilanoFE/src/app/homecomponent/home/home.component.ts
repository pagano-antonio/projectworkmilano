import { Component } from '@angular/core';
import { Candidate } from '../../model/Candidate';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

  candidate:Candidate = new Candidate;

}
