import { TestBed } from '@angular/core/testing';

import { EmployeetypeService } from './employeetype.service';

describe('EmployeetypeService', () => {
  let service: EmployeetypeService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(EmployeetypeService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
