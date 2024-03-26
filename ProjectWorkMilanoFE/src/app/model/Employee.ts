import { EmployeeType } from "./EmployeeType";
import { JobInterview } from "./JobInterview";

export class Employee {
    
	/*Attributi*/
    private _idEmployee!: number;
	private _email!: String;
	private _name!: String;
	private _password!: String;
	private _surname!: String;
	private _username!: String;

	/*Collegamento con ID Employee Type*/
	private _employeeType!: EmployeeType;

	/*Liste*/
	private _jobInterviews!: JobInterview[];

	/*I GETTER e i SETTER ci servono? Non mi sembra*/
	public get idEmployee(): number {
		return this._idEmployee;
	}
	public set idEmployee(value: number) {
		this._idEmployee = value;
	}

	public get email(): String {
		return this._email;
	}
	public set email(value: String) {
		this._email = value;
	}

	public get name(): String {
		return this._name;
	}
	public set name(value: String) {
		this._name = value;
	}

	public get password(): String {
		return this._password;
	}
	public set password(value: String) {
		this._password = value;
	}

	public get surname(): String {
		return this._surname;
	}
	public set surname(value: String) {
		this._surname = value;
	}

	public get username(): String {
		return this._username;
	}
	public set username(value: String) {
		this._username = value;
	}

	public get employeeType(): EmployeeType {
		return this._employeeType;
	}
	public set employeeType(value: EmployeeType) {
		this._employeeType = value;
	}

	public get jobInterviews(): JobInterview[] {
		return this._jobInterviews;
	}
	public set jobInterviews(value: JobInterview[]) {
		this._jobInterviews = value;
	}
}