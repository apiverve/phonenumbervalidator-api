declare module '@apiverve/phonenumbervalidator' {
  export interface phonenumbervalidatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface phonenumbervalidatorResponse {
    status: string;
    error: string | null;
    data: PhoneNumberValidatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PhoneNumberValidatorData {
      country:         null | string;
      detectedCountry: null | string;
      countryName:     null | string;
      countrycode:     number | null;
      numberNational:  number | null;
      extension:       null;
      isValid:         boolean | null;
      isMobile:        boolean | null;
      isVoip:          boolean | null;
      isDisposable:    boolean | null;
      type:            null | string;
      formatted:       Formatted;
      riskScore:       number | null;
      riskLevel:       null | string;
  }
  
  interface Formatted {
      international: null | string;
      national:      null | string;
      rfc:           null | string;
      e164:          null | string;
  }

  export default class phonenumbervalidatorWrapper {
    constructor(options: phonenumbervalidatorOptions);

    execute(callback: (error: any, data: phonenumbervalidatorResponse | null) => void): Promise<phonenumbervalidatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: phonenumbervalidatorResponse | null) => void): Promise<phonenumbervalidatorResponse>;
    execute(query?: Record<string, any>): Promise<phonenumbervalidatorResponse>;
  }
}
