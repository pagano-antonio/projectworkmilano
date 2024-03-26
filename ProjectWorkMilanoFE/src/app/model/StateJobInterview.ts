import { JobInterview } from "./JobInterview";

export class StateJobInterview{

    /*Attributi*/
    private _idStateJobInterview!: number;
    private _description!: String;
    private _title!: String;

    /*Liste*/
    private _jobInterviews!: JobInterview[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idStateJobInterview(): number {
        return this._idStateJobInterview;
    }
    public set idStateJobInterview(value: number) {
        this._idStateJobInterview = value;
    }

    public get description(): String {
        return this._description;
    }
    public set description(value: String) {
        this._description = value;
    }

    public get title(): String {
        return this._title;
    }
    public set title(value: String) {
        this._title = value;
    }

    public get jobInterviews(): JobInterview[] {
        return this._jobInterviews;
    }
    public set jobInterviews(value: JobInterview[]) {
        this._jobInterviews = value;
    }
}