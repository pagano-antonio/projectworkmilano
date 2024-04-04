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
import { UpdateskillformComponent } from './skill/updateskillform/updateskillform.component';
import { UpdatecomponentComponent } from './updatecomponent/updatecomponent.component';
import { FindjobinterviewbyidcandidateComponent } from './candidate/findjobinterviewbyidcandidate/findjobinterviewbyidcandidate.component';

export const routes: Routes = [

/*Home*/
{path: 'home', component: HomeComponent}, //Home
{path: 'findcandidate', component: FindComponent}, //Candidate -> Find
{path: 'addcandidate', component: AddCandidateComponent}, //Candidate -> Add

{path: 'allcandidates', component: AllCandidatesComponent}, //Restituisce la lista di TUTTI i candidati + il nuovo aggiunto

/*Candidate -> Find*/
{path: 'findbyidcandidateform', component: FindbyidcandidateformComponent}, //Find by ID Candidate Form

/*Candidate -> Find -> Res Pages*/
{path: 'findbyidcandidateres/:id', component: FindbyidcandidateresComponent}, //Find by ID Candidate Res

/*Find by ID Candidate Res*/
{path: 'updatecandidate/:id', component: UpdatecandidateformComponent}, //UPDATE -> Update Candidate Form
{path: 'findbycandidateskillres/:id', component: FindbycandidateskillresComponent}, //SKILLS -> Candidate Skills
{path: 'findjobinterviewbyidcandidate/:id', component: FindjobinterviewbyidcandidateComponent}, //JOB INTERVIEWS -> Candidate JIs

/*Find by ID Candidate Res -> SKILLS*/
{path: 'updateskillform/:id', component: UpdateskillformComponent}, //UPDATE -> Update Skill Form

/*Link 'globali'*/
{path: 'updatesuccess', component: UpdatecomponentComponent}, //Update Success
{path: 'deleted/:id', component: DeleteComponent}, //Delete Success
{path: '**', component: ErrorComponent} //Error
];
