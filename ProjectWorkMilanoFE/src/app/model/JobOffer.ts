import { CompanyClient } from "./CompanyClient";
import { JobOfferSkill } from "./JobOfferSkill";

export class JobOffer {

    /*Attributi*/
    private idJobOffer!: number;
    private description!: String;
    private endDate!: Date;
    private maxRal!: number;
    private minRal!: number;
    private startDate!: Date;
    private title!: String;

    /*Collegamento a ID Company Client*/
    private companyClient!: CompanyClient;

    /*Liste*/
    private jobOfferSkill!: JobOfferSkill[];

    /*I GETTER e i SETTER ci servono? Non mi sembra*/

}