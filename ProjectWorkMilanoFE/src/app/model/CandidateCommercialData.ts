import { Candidate } from "./Candidate";

export class CandidateCommercialData {
    
    /*Attributi*/
    private _idCandidateCommercial!: number;
    private _businessCost!: number;
    private _currentRal!: number;
    private _monthRefund!: number;
    private _notes!: String;
    private _proposedRal!: number;
    private _subsidyFlag!: number; //in TS non esiste il tipo 'byte'

    /*Collegamento con ID Candidate*/
    private _candidate!: Candidate;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idCandidateCommercial(): number {
        return this._idCandidateCommercial;
    }
    public set idCandidateCommercial(value: number) {
        this._idCandidateCommercial = value;
    }

    public get businessCost(): number {
        return this._businessCost;
    }
    public set businessCost(value: number) {
        this._businessCost = value;
    }

    public get currentRal(): number {
        return this._currentRal;
    }
    public set currentRal(value: number) {
        this._currentRal = value;
    }

    public get monthRefund(): number {
        return this._monthRefund;
    }
    public set monthRefund(value: number) {
        this._monthRefund = value;
    }

    public get notes(): String {
        return this._notes;
    }
    public set notes(value: String) {
        this._notes = value;
    }

    public get proposedRal(): number {
        return this._proposedRal;
    }
    public set proposedRal(value: number) {
        this._proposedRal = value;
    }

    public get subsidyFlag(): number {
        return this._subsidyFlag;
    }
    public set subsidyFlag(value: number) {
        this._subsidyFlag = value;
    }

    public get candidate(): Candidate {
        return this._candidate;
    }
    public set candidate(value: Candidate) {
        this._candidate = value;
    }
}