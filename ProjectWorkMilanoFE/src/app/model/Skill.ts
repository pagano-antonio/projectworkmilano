import { CandidateSkill } from "./CandidateSkill";
import { JobOfferSkill } from "./JobOfferSkill";

export class Skill {

    /*Attributi*/
    private _idSkill!: number;
    private _description!: String;
    private _title!: String;

    /*Liste*/
    private _candidateSkills!: CandidateSkill[];
    private jobOfferSkill!: JobOfferSkill[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    set idSkill(value:number){
        this._idSkill = value;
    }

    get idSkill():number {
        return this._idSkill;
    }

    set description(value:String){
        this._description = value;
    }

    get description():String{
        return this._description;
    }

    set title(value:String){
        this._title = value;
    }

    get title():String{
        return this._title;
    }

    set candidateSkills(value:CandidateSkill[]){
        this._candidateSkills = value;
    }

    get candidateSkills():CandidateSkill[]{
        return this._candidateSkills;
    }

}