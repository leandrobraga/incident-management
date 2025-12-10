using {sap.capire.incidents as my} from '../db/schemas';

service ProcessorService {
  entity Incidents as projection on my.Incidents;

  @readonly
  entity Customers as projection on my.Customers;
}

service MyService {
  entity Incidents as projection on my.Incidents;
  entity Customers as projection on my.Customers;
}

annotate ProcessorService.Incidents with @odata.draft.enabled;
