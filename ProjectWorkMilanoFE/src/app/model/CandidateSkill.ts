import { Candidate } from "./Candidate";
import { Skill } from "./Skill";

export class CandidateSkill{

    /*Attributi*/
    private _idCandidateSkill!: number;

    /*Collegamento a ID Candidate*/
    private _candidate!: Candidate;

    /*Collegamento a ID Skill*/
    private _skill!: Skill;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    set idCandidateSkill(value:number){
        this._idCandidateSkill = value;
    }

    get idCandidateSkill():number {
        return this._idCandidateSkill;
    }

    set candidate(value:Candidate){
        this._candidate = value;
    }

    get candidate():Candidate {
        return this._candidate;
    }

    set skill(value:Skill){
        this._skill = value;
    }

    get skill():Skill{
        return this._skill;
    }
}