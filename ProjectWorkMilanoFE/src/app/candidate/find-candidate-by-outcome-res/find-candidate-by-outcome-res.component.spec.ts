import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindCandidateByOutcomeResComponent } from './find-candidate-by-outcome-res.component';

describe('FindCandidateByOutcomeResComponent', () => {
  let component: FindCandidateByOutcomeResComponent;
  let fixture: ComponentFixture<FindCandidateByOutcomeResComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindCandidateByOutcomeResComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindCandidateByOutcomeResComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
