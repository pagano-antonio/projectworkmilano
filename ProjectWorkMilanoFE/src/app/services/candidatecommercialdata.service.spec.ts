import { TestBed } from '@angular/core/testing';

import { CandidatecommercialdataService } from './candidatecommercialdata.service';

describe('CandidatecommercialdataService', () => {
  let service: CandidatecommercialdataService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CandidatecommercialdataService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
