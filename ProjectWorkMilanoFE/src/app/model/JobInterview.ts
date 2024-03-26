import { Candidate } from "./Candidate";
import { Employee } from "./Employee";
import { StateJobInterview } from "./StateJobInterview";

export class JobInterview {

    /*Attributi*/
    private idJobInterview!: number;
    private date!: Date;
    private notes!: String;
    private outcome!: number;

    /*Collegamento con ID Candidate*/
    private candidate!: Candidate;

    /*Collegamento con ID Employee*/
    private employee!: Employee;

    /*Collegamento con ID State Job Interview*/
    private stateJobInterview!: StateJobInterview;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/

}