import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HomeComponent } from './homecomponent/home/home.component';
import { ErrorComponent } from './errorcomponent/error/error.component';
import { HeaderComponent } from "./headercomponent/header/header.component";

@Component({
    selector: 'app-root',
    standalone: true,
    templateUrl: './app.component.html',
    styleUrl: './app.component.css',
    imports: [RouterOutlet, HomeComponent, ErrorComponent, HeaderComponent]
})
export class AppComponent {
  title = 'Java Interviews - Home Angular';
}
