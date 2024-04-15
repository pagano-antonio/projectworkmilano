import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbysurnameComponent } from './findbysurname.component';

describe('FindbysurnameComponent', () => {
  let component: FindbysurnameComponent;
  let fixture: ComponentFixture<FindbysurnameComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbysurnameComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbysurnameComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
