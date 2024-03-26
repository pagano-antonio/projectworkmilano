import { JobOffer } from "./JobOffer";

export class ContractType{

    /*Attributi*/
    private _idContractType!: number;
	private _description!: String;
	private _title!: String;

    /*Liste*/
    private _jobOffers!: JobOffer[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idContractType(): number {
        return this._idContractType;
    }
    public set idContractType(value: number) {
        this._idContractType = value;
    }

    public get description(): String {
        return this._description;
    }
    public set description(value: String) {
        this._description = value;
    }

    public get title(): String {
        return this._title;
    }
    public set title(value: String) {
        this._title = value;
    }

    public get jobOffers(): JobOffer[] {
        return this._jobOffers;
    }
    public set jobOffers(value: JobOffer[]) {
        this._jobOffers = value;
    }
}