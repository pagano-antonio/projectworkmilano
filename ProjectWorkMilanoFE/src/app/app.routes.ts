import { Routes } from '@angular/router';
import { HomeComponent } from './homecomponent/home/home.component';
import { FindComponent } from './findcomponent/findcandidatehub/find.component';
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
import { FindbycityformComponent } from './candidate/findbycityform/findbycityform.component';
import { FindcandidatebycityresComponent } from './candidate/findcandidatebycityres/findcandidatebycityres.component';
import { AddJobInterviewComponent } from './jobInterview/add-job-interview/add-job-interview.component';
import { AllJobInterviewsComponent } from './jobInterview/all-job-interviews/all-job-interviews.component';
import { FindbycompanyformComponent } from './candidate/findbycompanyform/findbycompanyform.component';
import { FindcandidatebycompanyresComponent } from './candidate/findcandidatebycompanyres/findcandidatebycompanyres.component';
import { FindCandidateByStateJobInterviewFormComponent } from './candidate/find-candidate-by-state-job-interview-form/find-candidate-by-state-job-interview-form.component';
import { FindCandidateByStateJobInterviewResComponent } from './candidate/find-candidate-by-state-job-interview-res/find-candidate-by-state-job-interview-res.component';
import { FindCandidateByOutcomeComponent } from './candidate/find-candidate-by-outcome/find-candidate-by-outcome.component';
import { FindCandidateByOutcomeResComponent } from './candidate/find-candidate-by-outcome-res/find-candidate-by-outcome-res.component';
import { FindbysurnameComponent } from './candidate/findbysurnameform/findbysurname.component';
import { FindbysurnameresComponent } from './candidate/findbysurnameres/findbysurnameres.component';
import { FindbyphoneformComponent } from './candidate/findbyphoneform/findbyphoneform.component';
import { FindbyphoneresComponent } from './candidate/findbyphoneres/findbyphoneres.component';
import { FindbyskilltitleformComponent } from './candidate/findbyskilltitleform/findbyskilltitleform.component';
import { FindbyskilltitleresComponent } from './candidate/findbyskilltitleres/findbyskilltitleres.component';
import { FindbyedtformComponent } from './candidate/findbyedtform/findbyedtform.component';
import { FindbyedtresComponent } from './candidate/findbyedtres/findbyedtres.component';

export const routes: Routes = [

/*Home*/
{path: 'home', component: HomeComponent}, //Home
{path: 'findcandidate', component: FindComponent}, //Candidate -> Find
{path: 'addcandidate', component: AddCandidateComponent}, //Candidate -> Add

/*Candidate -> Find*/
{path: 'findbyidcandidateform', component: FindbyidcandidateformComponent}, //Find by ID Candidate Form
{path: 'findcandidatebycityform', component: FindbycityformComponent}, //Find by CITY
{path: 'findcandidatebycompanyform', component: FindbycompanyformComponent}, //Find by COMPANY
{path: 'findcandidatebystatejobinterviewform', component: FindCandidateByStateJobInterviewFormComponent}, //Find by STATE JOB INTERVIEW
{path: 'findcandidatebyoutcomeform', component: FindCandidateByOutcomeComponent}, //Find by OUTCOME
{path: 'findcandidatebysurnameform', component: FindbysurnameComponent}, //Find by SURNAME
{path: 'findcandidatebyphoneform', component: FindbyphoneformComponent}, //Find by PHONE
{path: 'findcandidatebyskillform', component: FindbyskilltitleformComponent}, //Find by SKILL
{path: 'findcandidatebyedtform', component: FindbyedtformComponent}, //Find by EDT form

/*Candidate -> Find -> Res Pages*/
{path: 'findbyidcandidateres/:id', component: FindbyidcandidateresComponent}, //Find by ID Candidate Res
{path: 'findcandidatebycityres/:city', component: FindcandidatebycityresComponent}, //Find by CITY Res
{path: 'findcandidatebycompanyres/:company', component: FindcandidatebycompanyresComponent}, //Find by COMPANY Res
{path: 'findcandidatebystatejobinterviewres/:id', component: FindCandidateByStateJobInterviewResComponent}, //Find by STATE JOB INTERVIEW Res
{path: 'findcandidatebyoutcomeres/:outcome', component: FindCandidateByOutcomeResComponent}, //Find by OUTCOME Res
{path: 'findcandidatebysurnameres/:surname', component: FindbysurnameresComponent}, //Find by SURNAME Res
{path: 'findcandidatebyphoneres/:phone', component: FindbyphoneresComponent}, //Find by PHONE Res
{path: 'findcandidatebyskillres/:title', component: FindbyskilltitleresComponent}, //Find by SKILL Res
{path: 'findcandidatebyedtres/:idedtype', component: FindbyedtresComponent}, //Find by EDT Res

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
{path: 'addjobinterview', component: AddJobInterviewComponent}, //ADD NEW JOB INTERVIEW -> Add JOB INTERVIEW Form

/*Add New Job Interview -> lista di TUTTI i JOB INTERVIEW + quello nuovo*/
{path: 'alljobinterviews', component: AllJobInterviewsComponent},

/*Find by ID Candidate Res -> EDUCATION*/
{path: 'updateeducationform/:id', component: UpdateEducationFormComponent}, //UPDATE -> Update EDUCATION Form

/*Find by ID Candidate Res -> WORK EXPERIENCE*/
{path: 'updateworkexperience/:id', component: UpdateWorkExperienceFormComponent}, //UPDATE -> Update WORK EXPERIENCE Form

/*Candidate -> Add -> lista di TUTTI i candidati che esce dopo aver aggiunto quello nuovo */
{path: 'allcandidates', component: AllCandidatesComponent},

/*Link 'globali'*/
{path: 'updatesuccess', component: UpdatecomponentComponent}, //Update Success
{path: 'deleted/:id', component: DeleteComponent}, //Delete Success
{path: '**', component: ErrorComponent} //Error
];
