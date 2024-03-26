import { JobOffer } from "./JobOffer";
import { Skill } from "./Skill";

export class JobOfferSkill {

    /*Attributi*/
    private _idJobOfferSkill!: number;

    /*Collegamento a ID Job Offer*/
    private _jobOffer!: JobOffer;

    /*Collegamento a ID Skill*/
    private _skill!: Skill;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idJobOfferSkill(): number {
        return this._idJobOfferSkill;
    }
    public set idJobOfferSkill(value: number) {
        this._idJobOfferSkill = value;
    }

    public get jobOffer(): JobOffer {
        return this._jobOffer;
    }
    public set jobOffer(value: JobOffer) {
        this._jobOffer = value;
    }

    public get skill(): Skill {
        return this._skill;
    }
    public set skill(value: Skill) {
        this._skill = value;
    }
}