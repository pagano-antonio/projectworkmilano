import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddJobInterviewComponent } from './add-job-interview.component';

describe('AddJobInterviewComponent', () => {
  let component: AddJobInterviewComponent;
  let fixture: ComponentFixture<AddJobInterviewComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AddJobInterviewComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(AddJobInterviewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
