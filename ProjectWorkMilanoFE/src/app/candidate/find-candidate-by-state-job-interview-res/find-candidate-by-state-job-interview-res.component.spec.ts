import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindCandidateByStateJobInterviewResComponent } from './find-candidate-by-state-job-interview-res.component';

describe('FindCandidateByStateJobInterviewResComponent', () => {
  let component: FindCandidateByStateJobInterviewResComponent;
  let fixture: ComponentFixture<FindCandidateByStateJobInterviewResComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindCandidateByStateJobInterviewResComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindCandidateByStateJobInterviewResComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
