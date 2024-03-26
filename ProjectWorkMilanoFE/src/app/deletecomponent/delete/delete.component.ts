import { Component } from '@angular/core';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { Candidate } from '../../model/Candidate';

@Component({
  selector: 'app-delete',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './delete.component.html',
  styleUrl: './delete.component.css'
})
export class DeleteComponent {

}
