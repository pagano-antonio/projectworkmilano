import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllJobInterviewsComponent } from './all-job-interviews.component';

describe('AllJobInterviewsComponent', () => {
  let component: AllJobInterviewsComponent;
  let fixture: ComponentFixture<AllJobInterviewsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AllJobInterviewsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(AllJobInterviewsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
