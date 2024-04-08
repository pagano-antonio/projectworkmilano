import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindEducationByIdCandidateComponent } from './find-education-by-id-candidate.component';

describe('FindEducationByIdCandidateComponent', () => {
  let component: FindEducationByIdCandidateComponent;
  let fixture: ComponentFixture<FindEducationByIdCandidateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindEducationByIdCandidateComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindEducationByIdCandidateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
