import { TestBed } from '@angular/core/testing';

import { JobofferskillService } from './jobofferskill.service';

describe('JobofferskillService', () => {
  let service: JobofferskillService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(JobofferskillService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
