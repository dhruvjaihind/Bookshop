using sap.capire.db as my from '../db/visual.cds';

service SapCapireDbService
{
    @readonly
    entity Flights as
        projection on my.Flights
        {
            *
        }

@readonly
    entity Addresses as
        projection on my.Addresses
        {
            *
        }
}
