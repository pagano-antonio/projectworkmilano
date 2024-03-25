import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbyidcandidateresComponent } from './findbyidcandidateres.component';

describe('FindbyidcandidateresComponent', () => {
  let component: FindbyidcandidateresComponent;
  let fixture: ComponentFixture<FindbyidcandidateresComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbyidcandidateresComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbyidcandidateresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
