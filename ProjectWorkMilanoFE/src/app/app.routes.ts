import { Routes } from '@angular/router';
import { HomeComponent } from './homecomponent/home/home.component';
import { FindComponent } from './findcomponent/find/find.component';
import { FindbyidcandidateformComponent } from './candidate/findbyidcandidateform/findbyidcandidateform.component';
import { ErrorComponent } from './errorcomponent/error/error.component';
import { FindbyidcandidateresComponent } from './candidate/findbyidcandidateres/findbyidcandidateres.component';
import { UpdatecandidateformComponent } from './candidate/updatecandidateform/updatecandidateform.component';
import { DeleteComponent } from './deletecomponent/delete/delete.component';
import { FindbycandidateskillresComponent } from './candidate/findbycandidateskillcom/findbycandidateskillres/findbycandidateskillres.component';

export const routes: Routes = [
{path: '', component: HomeComponent}, //Home
{path: 'deleted/:id', component: DeleteComponent}, //Delete Success
{path: 'error', component: ErrorComponent}, //Error
{path: 'findcandidate', component: FindComponent}, //Find page con tutte le query in tabella
{path: 'findbyidcandidateform', component: FindbyidcandidateformComponent}, //Find by ID Candidate Form
{path: 'findbyidcandidateres/:id', component: FindbyidcandidateresComponent}, //Find by ID Candidate Res Page
{path: 'updatecandidate/:id', component: UpdatecandidateformComponent}, //da Find by ID Candidate Res -> Update Candidate Form
{path: 'findbycandidateskillres/:id', component: FindbycandidateskillresComponent} //da Find by Id Candidate Res -> Mostra Skill Candidate passando per SKILL
];
