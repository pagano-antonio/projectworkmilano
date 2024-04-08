import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UpdateWorkExperienceFormComponent } from './update-work-experience-form.component';

describe('UpdateWorkExperienceFormComponent', () => {
  let component: UpdateWorkExperienceFormComponent;
  let fixture: ComponentFixture<UpdateWorkExperienceFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [UpdateWorkExperienceFormComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(UpdateWorkExperienceFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
