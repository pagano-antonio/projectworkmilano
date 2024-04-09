import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbycityformComponent } from './findbycityform.component';

describe('FindbycityformComponent', () => {
  let component: FindbycityformComponent;
  let fixture: ComponentFixture<FindbycityformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbycityformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbycityformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
