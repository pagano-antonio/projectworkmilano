import { CandidateCommercialData } from "./CandidateCommercialData";
import { CandidateSkill } from "./CandidateSkill";
import { Education } from "./Education";
import { JobInterview } from "./JobInterview";
import { WorkExperience } from "./WorkExperience";

export class Candidate {

    /*Attributi*/
    private _idCandidate!: number;
    private _address!: String;
    private _birthday!: Date;
    private _birthPlace!: String;
    private _city!: String;
    private _email!: String;
    private _name!: String;
    private _phone!: BigInt;
    private _surname!: String;

    /*Liste*/
    private candidateCommercialData!: CandidateCommercialData[];
    private candidateSkills!: CandidateSkill[];
    private educations!: Education[];
    private jobInterview!: JobInterview[];
    private workExperiences!: WorkExperience[];

    /*I GETTER e i SETTER*/
    set idCandidate(value:number){
        this._idCandidate = value;
    }

    get idCandidate():number {
        return this._idCandidate;
    }

    set name(value:String){
        this._name = value;
    }

    get name():String{
        return this._name;
    }

    set surname(value:String){
        this._surname = value;
    }

    get surname():String{
        return this._surname;
    }

    set birthday(value:Date){
        this._birthday = value;
    }

    get birthday():Date{
        return this._birthday;
    }

    set birthPlace(value:String){
        this._birthPlace = value;
    }

    get birthPlace():String{
        return this._birthPlace;
    }

    set address(value:String){
        this._address = value;
    }

    get address():String{
        return this._address;
    }

    set city(value:String){
        this._city = value;
    }

    get city():String{
        return this._city;
    }

    set email(value:String){
        this._email = value;
    }

    get email():String{
        return this._email;
    }

    set phone(value:BigInt){
        this._phone = value;
    }

    get phone():BigInt{
        return this._phone;
    }
}