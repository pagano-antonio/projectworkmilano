import { TestBed } from '@angular/core/testing';

import { EducationdegreetypeService } from './educationdegreetype.service';

describe('EducationdegreetypeService', () => {
  let service: EducationdegreetypeService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(EducationdegreetypeService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
