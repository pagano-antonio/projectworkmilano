import { CandidateCommercialData } from "./CandidateCommercialData";
import { CandidateSkill } from "./CandidateSkill";
import { Education } from "./Education";
import { JobInterview } from "./JobInterview";
import { WorkExperience } from "./WorkExperience";

export class Candidate {

    /*Attributi*/
    public idCandidate!: number;
    public address!: String;
    public birthday!: Date;
    public birthPlace!: String;
    public city!: String;
    public email!: String;
    public name!: String;
    public phone!: BigInt;
    public surname!: String;

    /*Liste*/
    public candidateCommercialData!: CandidateCommercialData[];
    public candidateSkills!: CandidateSkill[];
    public educations!: Education[];
    public jobInterview!: JobInterview[];
    public workExperiences!: WorkExperience[];

    /*I GETTER e i SETTER*/
    /*public set idCandidate(value:number){
        this._idCandidate = value;
    }

    public get idCandidate():number {
        return this._idCandidate;
    }

    public set name(value:String){
        this._name = value;
    }

    public get name():String{
        return this._name;
    }

    public set surname(value:String){
        this._surname = value;
    }

    public get surname():String{
        return this._surname;
    }

    public set birthday(value:Date){
        this._birthday = value;
    }

    public get birthday():Date{
        return this._birthday;
    }

    public set birthPlace(value:String){
        this._birthPlace = value;
    }

    public get birthPlace():String{
        return this._birthPlace;
    }

    public set address(value:String){
        this._address = value;
    }

    public get address():String{
        return this._address;
    }

    public set city(value:String){
        this._city = value;
    }

    public get city():String{
        return this._city;
    }

    public set email(value:String){
        this._email = value;
    }

    public get email():String{
        return this._email;
    }

    public set phone(value:BigInt){
        this._phone = value;
    }

    public get phone():BigInt{
        return this._phone;
    }

    public set candidateCommercialData(value:CandidateCommercialData[]){
        this._candidateCommercialData = value;
    }

    public get candidateCommercialData():CandidateCommercialData[]{
        return this._candidateCommercialData;
    }

    public set candidateSkills(value:CandidateSkill[]){
        this._candidateSkills = value;
    }

    public get candidateSkills():CandidateSkill[]{
        return this._candidateSkills;
    }

    public set educations(value:Education[]){
        this._educations = value;
    }

    public get educations():Education[]{
        return this._educations;
    }

    public set jobInterview(value:JobInterview[]){
        this._jobInterview = value;
    }

    public get jobInterview():JobInterview[]{
        return this._jobInterview;
    }

    public set workExperiences(value:WorkExperience[]){
        this._workExperiences = value;
    }

    public get workExperiences():WorkExperience[]{
        return this._workExperiences;
    }*/
}