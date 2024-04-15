import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbyskilltitleformComponent } from './findbyskilltitleform.component';

describe('FindbyskilltitleformComponent', () => {
  let component: FindbyskilltitleformComponent;
  let fixture: ComponentFixture<FindbyskilltitleformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbyskilltitleformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbyskilltitleformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
