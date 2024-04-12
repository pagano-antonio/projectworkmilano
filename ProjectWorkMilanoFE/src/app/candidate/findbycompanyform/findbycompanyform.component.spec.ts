import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbycompanyformComponent } from './findbycompanyform.component';

describe('FindbycompanyformComponent', () => {
  let component: FindbycompanyformComponent;
  let fixture: ComponentFixture<FindbycompanyformComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbycompanyformComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbycompanyformComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
