import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindcandidatebycompanyresComponent } from './findcandidatebycompanyres.component';

describe('FindcandidatebycompanyresComponent', () => {
  let component: FindcandidatebycompanyresComponent;
  let fixture: ComponentFixture<FindcandidatebycompanyresComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindcandidatebycompanyresComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindcandidatebycompanyresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
