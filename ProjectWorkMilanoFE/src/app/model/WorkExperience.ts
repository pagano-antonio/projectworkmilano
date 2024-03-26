import { Candidate } from "./Candidate";

export class WorkExperience {

    /*Attributi*/
    private _idWorkExperience!: number;
    private _city!: String;
    private _company!: String;
    private _description!: String;
    private _endDate!: Date;
    private _startDate!: Date;
    private _title!: String;

    /*Collegamento a ID Candidate*/
    private _candidate!: Candidate;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idWorkExperience(): number {
        return this._idWorkExperience;
    }
    public set idWorkExperience(value: number) {
        this._idWorkExperience = value;
    }

    public get city(): String {
        return this._city;
    }
    public set city(value: String) {
        this._city = value;
    }

    public get company(): String {
        return this._company;
    }
    public set company(value: String) {
        this._company = value;
    }

    public get description(): String {
        return this._description;
    }
    public set description(value: String) {
        this._description = value;
    }

    public get endDate(): Date {
        return this._endDate;
    }
    public set endDate(value: Date) {
        this._endDate = value;
    }

    public get startDate(): Date {
        return this._startDate;
    }
    public set startDate(value: Date) {
        this._startDate = value;
    }

    public get title(): String {
        return this._title;
    }
    public set title(value: String) {
        this._title = value;
    }

    public get candidate(): Candidate {
        return this._candidate;
    }
    public set candidate(value: Candidate) {
        this._candidate = value;
    }
}