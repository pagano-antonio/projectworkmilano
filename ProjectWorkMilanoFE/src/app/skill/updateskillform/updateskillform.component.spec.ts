import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UpdateskillformComponent } from './updateskillform.component';

describe('UpdateskillformComponent', () => {
  let component: UpdateskillformComponent;
  let fixture: ComponentFixture<UpdateskillformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [UpdateskillformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(UpdateskillformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
