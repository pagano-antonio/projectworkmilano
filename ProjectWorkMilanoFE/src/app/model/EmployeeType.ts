import { Employee } from "./Employee";

export class EmployeeType {

    /*Attributi*/
    private _idEmployeeType!: number;
    private _description!: String;

    /*Liste*/
    private _employees!: Employee[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idEmployeeType(): number {
        return this._idEmployeeType;
    }
    public set idEmployeeType(value: number) {
        this._idEmployeeType = value;
    }

    public get description(): String {
        return this._description;
    }
    public set description(value: String) {
        this._description = value;
    }

    public get employees(): Employee[] {
        return this._employees;
    }
    public set employees(value: Employee[]) {
        this._employees = value;
    }
}