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
import { FindjobinterviewbyidcandidateComponent } from './jobInterview/findjobinterviewbyidcandidate/findjobinterviewbyidcandidate.component';
import { UpdateJobInterviewFormComponent } from './jobInterview/update-job-interview-form/update-job-interview-form.component';
import { FindEducationByIdCandidateComponent } from './education/find-education-by-id-candidate/find-education-by-id-candidate.component';
import { UpdateEducationFormComponent } from './education/update-education-form/update-education-form.component';
import { FindWorkExperienceByIdCandidateComponent } from './workexperience/find-work-experience-by-id-candidate/find-work-experience-by-id-candidate.component';
import { UpdateWorkExperienceFormComponent } from './workexperience/update-work-experience-form/update-work-experience-form.component';

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
{path: 'findeducationbyidcandidate/:id', component: FindEducationByIdCandidateComponent}, //EDUCATION -> Candidate Education
{path: 'findworkexperiencebyidcandidate/:id', component: FindWorkExperienceByIdCandidateComponent}, //WORK EXPERIENCE -> Candidate WE

/*Find by ID Candidate Res -> SKILLS*/
{path: 'updateskillform/:id', component: UpdateskillformComponent}, //UPDATE -> Update Skill Form

/*Find by ID Candidate Res -> JOB INTERVIEWS */
{path: 'updatejobinterviewform/:id', component: UpdateJobInterviewFormComponent}, //UPDATE -> Update JOB INTERVIEW Form

/*Find by ID Candidate Res -> EDUCATION*/
{path: 'updateeducationform/:id', component: UpdateEducationFormComponent}, //UPDATE -> Update EDUCATION Form

/*Find by ID Candidate Res -> WORK EXPERIENCE*/
{path: 'updateworkexperience/:id', component: UpdateWorkExperienceFormComponent}, //UPDATE -> Update WORK EXPERIENCE Form

/*Link 'globali'*/
{path: 'updatesuccess', component: UpdatecomponentComponent}, //Update Success
{path: 'deleted/:id', component: DeleteComponent}, //Delete Success
{path: '**', component: ErrorComponent} //Error
];
