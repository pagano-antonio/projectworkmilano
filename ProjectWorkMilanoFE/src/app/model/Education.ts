import { Candidate } from "./Candidate";
import { EducationDegreeType } from "./EducationDegreeType";

export class Education{
    private idEducation!: number;
    private date!: Date;
    private finalGrade!: String;
    private place!: String;
    private schoolName!: String;

    /*Collegamento con ID Candidate*/
    private candidate!: Candidate;

    /*Collegamento con ID Education Degree Type*/
    private educationDegreeType!: EducationDegreeType;

    /*I GETTER e i SETTER ci servono? Non mi sembra*/

}