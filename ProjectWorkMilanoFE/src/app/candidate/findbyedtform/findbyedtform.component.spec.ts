import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbyedtformComponent } from './findbyedtform.component';

describe('FindbyedtformComponent', () => {
  let component: FindbyedtformComponent;
  let fixture: ComponentFixture<FindbyedtformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbyedtformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbyedtformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
