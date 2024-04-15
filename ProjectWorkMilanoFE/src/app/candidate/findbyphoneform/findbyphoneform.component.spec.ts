import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbyphoneformComponent } from './findbyphoneform.component';

describe('FindbyphoneformComponent', () => {
  let component: FindbyphoneformComponent;
  let fixture: ComponentFixture<FindbyphoneformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbyphoneformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbyphoneformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
