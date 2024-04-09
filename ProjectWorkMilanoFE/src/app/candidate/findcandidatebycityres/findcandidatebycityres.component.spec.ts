import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindcandidatebycityresComponent } from './findcandidatebycityres.component';

describe('FindcandidatebycityresComponent', () => {
  let component: FindcandidatebycityresComponent;
  let fixture: ComponentFixture<FindcandidatebycityresComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindcandidatebycityresComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindcandidatebycityresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
