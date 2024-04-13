import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindCandidateByStateJobInterviewFormComponent } from './find-candidate-by-state-job-interview-form.component';

describe('FindCandidateByStateJobInterviewFormComponent', () => {
  let component: FindCandidateByStateJobInterviewFormComponent;
  let fixture: ComponentFixture<FindCandidateByStateJobInterviewFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindCandidateByStateJobInterviewFormComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindCandidateByStateJobInterviewFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
