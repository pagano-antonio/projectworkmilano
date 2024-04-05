import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UpdateJobInterviewFormComponent } from './update-job-interview-form.component';

describe('UpdateJobInterviewFormComponent', () => {
  let component: UpdateJobInterviewFormComponent;
  let fixture: ComponentFixture<UpdateJobInterviewFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [UpdateJobInterviewFormComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(UpdateJobInterviewFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
