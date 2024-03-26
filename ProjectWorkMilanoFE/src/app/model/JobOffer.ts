import { CompanyClient } from "./CompanyClient";
import { JobOfferSkill } from "./JobOfferSkill";

export class JobOffer {

    /*Attributi*/
    private _idJobOffer!: number;
    private _description!: String;
    private _endDate!: Date;
    private _maxRal!: number;
    private _minRal!: number;
    private _startDate!: Date;
    private _title!: String;

    /*Collegamento a ID Company Client*/
    private _companyClient!: CompanyClient;

    /*Liste*/
    private _jobOfferSkill!: JobOfferSkill[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idJobOffer(): number {
        return this._idJobOffer;
    }
    public set idJobOffer(value: number) {
        this._idJobOffer = value;
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

    public get maxRal(): number {
        return this._maxRal;
    }
    public set maxRal(value: number) {
        this._maxRal = value;
    }

    public get minRal(): number {
        return this._minRal;
    }
    public set minRal(value: number) {
        this._minRal = value;
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

    public get companyClient(): CompanyClient {
        return this._companyClient;
    }
    public set companyClient(value: CompanyClient) {
        this._companyClient = value;
    }

    public get jobOfferSkill(): JobOfferSkill[] {
        return this._jobOfferSkill;
    }
    public set jobOfferSkill(value: JobOfferSkill[]) {
        this._jobOfferSkill = value;
    }
}