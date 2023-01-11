namespace sap.capire.db;
using { cuid,temporal, managed, Country } from '@sap/cds/common';
entity Flights : temporal, managed ,cuid
{
    FROM_ : String(100) not null;
    TO_ : String(100) not null;
    NOOFPASSENGERS : Integer not null;
}

entity Addresses {
street : String;
town : String;
country : Country;
}
