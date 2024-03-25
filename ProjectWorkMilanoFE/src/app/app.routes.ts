import { Routes } from '@angular/router';
import { HomeComponent } from './homecomponent/home/home.component';
import { FindComponent } from './findcomponent/find/find.component';
import { FindbyidcandidateformComponent } from './candidate/findbyidcandidateform/findbyidcandidateform.component';
import { ErrorComponent } from './errorcomponent/error/error.component';
import { FindbyidcandidateresComponent } from './candidate/findbyidcandidateres/findbyidcandidateres.component';
import { UpdatecandidateformComponent } from './candidate/updatecandidateform/updatecandidateform.component';

export const routes: Routes = [
{path: '', component: HomeComponent},
{path: 'error', component: ErrorComponent},
{path: 'find', component: FindComponent},
{path: 'findbyidcandidateform', component: FindbyidcandidateformComponent},
{path: 'findbyidcandidateres/:id', component: FindbyidcandidateresComponent},
{path: 'updatecandidate/:id', component: UpdatecandidateformComponent}
];
