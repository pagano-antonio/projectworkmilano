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
    public set idCandidateSkill(value:number){
        this._idCandidateSkill = value;
    }

    public get idCandidateSkill():number {
        return this._idCandidateSkill;
    }

    public set candidate(value:Candidate){
        this._candidate = value;
    }

    public get candidate():Candidate {
        return this._candidate;
    }

    public set skill(value:Skill){
        this._skill = value;
    }

    public get skill():Skill{
        return this._skill;
    }
}