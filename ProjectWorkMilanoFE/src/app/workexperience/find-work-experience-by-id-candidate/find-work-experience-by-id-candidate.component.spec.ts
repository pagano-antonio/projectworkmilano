import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindWorkExperienceByIdCandidateComponent } from './find-work-experience-by-id-candidate.component';

describe('FindWorkExperienceByIdCandidateComponent', () => {
  let component: FindWorkExperienceByIdCandidateComponent;
  let fixture: ComponentFixture<FindWorkExperienceByIdCandidateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindWorkExperienceByIdCandidateComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindWorkExperienceByIdCandidateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
