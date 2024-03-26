import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UpdatecandidateformComponent } from './updatecandidateform.component';

describe('UpdatecandidateformComponent', () => {
  let component: UpdatecandidateformComponent;
  let fixture: ComponentFixture<UpdatecandidateformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [UpdatecandidateformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(UpdatecandidateformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
