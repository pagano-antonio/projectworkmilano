import { Routes } from '@angular/router';
import { HomeComponent } from './homecomponent/home/home.component';
import { FindComponent } from './findcomponent/find/find.component';
import { FindbyidcandidateformComponent } from './candidate/findbyidcandidateform/findbyidcandidateform.component';
import { ErrorComponent } from './errorcomponent/error/error.component';
import { FindbyidcandidateresComponent } from './candidate/findbyidcandidateres/findbyidcandidateres.component';
import { UpdatecandidateformComponent } from './candidate/updatecandidateform/updatecandidateform.component';
import { DeleteComponent } from './deletecomponent/delete/delete.component';
import { FindbycandidateskillresComponent } from './candidate/findbycandidateskillcom/findbycandidateskillres/findbycandidateskillres.component';
import { AddCandidateComponent } from './candidate/add-candidate/add-candidate.component';
import { AllCandidatesComponent } from './candidate/candidates-list/candidates-list.component';

export const routes: Routes = [
/*Blocco di link legati alla Home*/
{path: 'home', component: HomeComponent}, //Home
{path: 'findcandidate', component: FindComponent}, //Find page con tutte le query in tabella
{path: 'addcandidate', component: AddCandidateComponent}, //Aggiungi Candidato
{path: 'allcandidates', component: AllCandidatesComponent},

/*Blocco di link su Candidate -> Find*/
{path: 'findbyidcandidateform', component: FindbyidcandidateformComponent}, //Find by ID Candidate Form

/*Pagine dei risultati di Candidate -> Find*/
{path: 'findbyidcandidateres/:id', component: FindbyidcandidateresComponent}, //Find by ID Candidate Res Page

/*I pulsanti che si trovano nelle Res Page di Candidate*/
{path: 'updatecandidate/:id', component: UpdatecandidateformComponent}, //da Find by ID Candidate Res -> Update Candidate Form
{path: 'findbycandidateskillres/:id', component: FindbycandidateskillresComponent}, //da Find by Id Candidate Res -> Mostra Skill Candidate passando per SKILL

/*Link 'globali'*/
{path: 'deleted/:id', component: DeleteComponent}, //Delete Success
{path: 'error', component: ErrorComponent} //Error
];
