import { Education } from "./Education";

export class EducationDegreeType{

    /*Attributi*/
    private _idEducationDegreeType!: number;
    private _description!: String;

    /*Liste*/
    private _educations!: Education[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/
    public get idEducationDegreeType(): number {
        return this._idEducationDegreeType;
    }
    public set idEducationDegreeType(value: number) {
        this._idEducationDegreeType = value;
    }

    public get description(): String {
        return this._description;
    }
    public set description(value: String) {
        this._description = value;
    }

    public get educations(): Education[] {
        return this._educations;
    }
    public set educations(value: Education[]) {
        this._educations = value;
    }
}