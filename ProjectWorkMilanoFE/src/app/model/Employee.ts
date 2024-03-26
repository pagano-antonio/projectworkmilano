import { EmployeeType } from "./EmployeeType";
import { JobInterview } from "./JobInterview";

export class Employee {
    
	/*Attributi*/
    private idEmployee!: number;
	private email!: String;
	private name!: String;
	private password!: String;
	private surname!: String;
	private username!: String;

	/*Collegamento con ID Employee Type*/
	private employeeType!: EmployeeType;

	/*Liste*/
	private jobInterviews!: JobInterview[];

	/*I GETTER e i SETTER ci servono? Non mi sembra*/

}