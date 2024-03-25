import { Candidate } from "./Candidate";

export class WorkExperience {

    /*Attributi*/
    private idWorkExperience!: number;
    private city!: String;
    private company!: String;
    private description!: String;
    private endDate!: Date;
    private startDate!: Date;
    private title!: String;

    /*Collegamento a ID Candidate*/
    private candidate!: Candidate;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/


}