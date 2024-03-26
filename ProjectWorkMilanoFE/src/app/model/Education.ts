import { Candidate } from "./Candidate";
import { EducationDegreeType } from "./EducationDegreeType";

export class Education{
    private _idEducation!: number;
    private _date!: Date;
    private _finalGrade!: String;
    private _place!: String;
    private _schoolName!: String;

    /*Collegamento con ID Candidate*/
    private _candidate!: Candidate;

    /*Collegamento con ID Education Degree Type*/
    private _educationDegreeType!: EducationDegreeType;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idEducation(): number {
        return this._idEducation;
    }
    public set idEducation(value: number) {
        this._idEducation = value;
    }

    public get date(): Date {
        return this._date;
    }
    public set date(value: Date) {
        this._date = value;
    }

    public get finalGrade(): String {
        return this._finalGrade;
    }
    public set finalGrade(value: String) {
        this._finalGrade = value;
    }

    public get place(): String {
        return this._place;
    }
    public set place(value: String) {
        this._place = value;
    }

    public get schoolName(): String {
        return this._schoolName;
    }
    public set schoolName(value: String) {
        this._schoolName = value;
    }

    public get candidate(): Candidate {
        return this._candidate;
    }
    public set candidate(value: Candidate) {
        this._candidate = value;
    }

    public get educationDegreeType(): EducationDegreeType {
        return this._educationDegreeType;
    }
    public set educationDegreeType(value: EducationDegreeType) {
        this._educationDegreeType = value;
    }
}