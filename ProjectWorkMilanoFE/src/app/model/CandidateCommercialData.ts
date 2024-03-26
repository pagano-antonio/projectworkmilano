import { Candidate } from "./Candidate";

export class CandidateCommercialData {
    
    /*Attributi*/
    private idCandidateCommercial!: number;
    private businessCost!: number;
    private currentRal!: number;
    private monthRefund!: number;
    private notes!: String;
    private proposedRal!: number;
    private subsidyFlag!: number; //in TS non esiste il tipo 'byte'

    /*Collegamento con ID Candidate*/
    private candidate!: Candidate;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
}