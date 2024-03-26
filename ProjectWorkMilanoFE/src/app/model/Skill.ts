import { CandidateSkill } from "./CandidateSkill";
import { JobOfferSkill } from "./JobOfferSkill";

export class Skill {

    /*Attributi*/
    private _idSkill!: number;
    private _description!: String;
    private _title!: String;

    /*Liste*/
    private _candidateSkills!: CandidateSkill[];
    private _jobOfferSkill!: JobOfferSkill[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public set idSkill(value:number){
        this._idSkill = value;
    }

    public get idSkill():number {
        return this._idSkill;
    }

    public set description(value:String){
        this._description = value;
    }

    public get description():String{
        return this._description;
    }

    public set title(value:String){
        this._title = value;
    }

    public get title():String{
        return this._title;
    }

    public set candidateSkills(value:CandidateSkill[]){
        this._candidateSkills = value;
    }

    public get candidateSkills():CandidateSkill[]{
        return this._candidateSkills;
    }

    public get jobOfferSkill(): JobOfferSkill[] {
        return this._jobOfferSkill;
    }
    public set jobOfferSkill(value: JobOfferSkill[]) {
        this._jobOfferSkill = value;
    }

}