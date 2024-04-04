import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindjobinterviewbyidcandidateComponent } from './findjobinterviewbyidcandidate.component';

describe('FindjobinterviewbyidcandidateComponent', () => {
  let component: FindjobinterviewbyidcandidateComponent;
  let fixture: ComponentFixture<FindjobinterviewbyidcandidateComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindjobinterviewbyidcandidateComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindjobinterviewbyidcandidateComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
