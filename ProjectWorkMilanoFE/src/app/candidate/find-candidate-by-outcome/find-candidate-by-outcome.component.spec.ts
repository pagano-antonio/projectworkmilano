import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindCandidateByOutcomeComponent } from './find-candidate-by-outcome.component';

describe('FindCandidateByOutcomeComponent', () => {
  let component: FindCandidateByOutcomeComponent;
  let fixture: ComponentFixture<FindCandidateByOutcomeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindCandidateByOutcomeComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindCandidateByOutcomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
