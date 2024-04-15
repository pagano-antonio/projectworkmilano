import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FindbyphoneresComponent } from './findbyphoneres.component';

describe('FindbyphoneresComponent', () => {
  let component: FindbyphoneresComponent;
  let fixture: ComponentFixture<FindbyphoneresComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FindbyphoneresComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FindbyphoneresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
