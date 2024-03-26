import { TestBed } from '@angular/core/testing';

import { StatejobinterviewService } from './statejobinterview.service';

describe('StatejobinterviewService', () => {
  let service: StatejobinterviewService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(StatejobinterviewService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
