import { JobOffer } from "./JobOffer";

export class CompanyClient{

    /*Attributi*/
    private _idCompanyClient!: number;
	private _address!: String;
	private _city!: String;
	private _name!: String;

    /*Liste*/
    private _jobOffers!: JobOffer[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idCompanyClient(): number {
        return this._idCompanyClient;
    }
    public set idCompanyClient(value: number) {
        this._idCompanyClient = value;
    }

    public get address(): String {
        return this._address;
    }
    public set address(value: String) {
        this._address = value;
    }

    public get city(): String {
        return this._city;
    }
    public set city(value: String) {
        this._city = value;
    }

    public get name(): String {
        return this._name;
    }
    public set name(value: String) {
        this._name = value;
    }

    public get jobOffers(): JobOffer[] {
        return this._jobOffers;
    }
    public set jobOffers(value: JobOffer[]) {
        this._jobOffers = value;
    }
}