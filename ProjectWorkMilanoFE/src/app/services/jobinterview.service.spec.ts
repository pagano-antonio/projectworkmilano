import { TestBed } from '@angular/core/testing';

import { JobinterviewService } from './jobinterview.service';

describe('JobinterviewService', () => {
  let service: JobinterviewService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(JobinterviewService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
