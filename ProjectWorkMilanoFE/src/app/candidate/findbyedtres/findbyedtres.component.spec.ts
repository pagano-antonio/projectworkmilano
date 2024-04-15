import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbyedtresComponent } from './findbyedtres.component';

describe('FindbyedtresComponent', () => {
  let component: FindbyedtresComponent;
  let fixture: ComponentFixture<FindbyedtresComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbyedtresComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbyedtresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
