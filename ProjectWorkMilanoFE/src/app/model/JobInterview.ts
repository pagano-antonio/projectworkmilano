import { Candidate } from "./Candidate";
import { Employee } from "./Employee";
import { StateJobInterview } from "./StateJobInterview";

export class JobInterview {

    /*Attributi*/
    private _idJobInterview!: number;
    private _date!: Date;
    private _notes!: String;
    private _outcome!: number;

    /*Collegamento con ID Candidate*/
    private _candidate!: Candidate;

    /*Collegamento con ID Employee*/
    private _employee!: Employee;

    /*Collegamento con ID State Job Interview*/
    private _stateJobInterview!: StateJobInterview;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idJobInterview(): number {
        return this._idJobInterview;
    }
    public set idJobInterview(value: number) {
        this._idJobInterview = value;
    }

    public get date(): Date {
        return this._date;
    }
    public set date(value: Date) {
        this._date = value;
    }

    public get notes(): String {
        return this._notes;
    }
    public set notes(value: String) {
        this._notes = value;
    }

    public get outcome(): number {
        return this._outcome;
    }
    public set outcome(value: number) {
        this._outcome = value;
    }

    public get candidate(): Candidate {
        return this._candidate;
    }
    public set candidate(value: Candidate) {
        this._candidate = value;
    }

    public get employee(): Employee {
        return this._employee;
    }
    public set employee(value: Employee) {
        this._employee = value;
    }

    public get stateJobInterview(): StateJobInterview {
        return this._stateJobInterview;
    }
    public set stateJobInterview(value: StateJobInterview) {
        this._stateJobInterview = value;
    }
}