import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbysurnameresComponent } from './findbysurnameres.component';

describe('FindbysurnameresComponent', () => {
  let component: FindbysurnameresComponent;
  let fixture: ComponentFixture<FindbysurnameresComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbysurnameresComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbysurnameresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
