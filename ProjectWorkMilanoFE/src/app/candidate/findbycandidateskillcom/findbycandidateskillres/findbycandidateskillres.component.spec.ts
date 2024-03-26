import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbycandidateskillresComponent } from './findbycandidateskillres.component';

describe('FindbycandidateskillresComponent', () => {
  let component: FindbycandidateskillresComponent;
  let fixture: ComponentFixture<FindbycandidateskillresComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbycandidateskillresComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbycandidateskillresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
