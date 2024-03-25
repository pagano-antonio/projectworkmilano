import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbyidcandidateformComponent } from './findbyidcandidateform.component';

describe('FindbyidcandidateformComponent', () => {
  let component: FindbyidcandidateformComponent;
  let fixture: ComponentFixture<FindbyidcandidateformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbyidcandidateformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbyidcandidateformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
