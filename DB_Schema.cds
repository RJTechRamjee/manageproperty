using {  managed } from '@sap/cds/common';
namespace manageproperty;

entity Properties : managed 
{
    key PropertyUuid : UUID
        @Core.Description : 'Property Uuid';
    Id : String(10);
    Title : String(100);
    Description : String(200);
    Type : PropertyType;
    ListingFor : PropertyListingFor;
    Purpose : PropertyPurpose;
    State : PropertyState;
    IsVacant : Boolean;
    AvailableFrom : Date;
    ContactPerson : Association to one Users;
}

entity Users : managed
{
    key UserUuid : UUID;
    Id : String(10);
    FirstName : String(40);
    LastName : String(40);
    Email : String(50);
    Address : String(50);
    ShortIntro : String(200);
    DetailedIntro : String(500);
}

type PropertyListingFor : Integer enum
{
    Sale = 1;
    Rent = 2;
    Lease = 3;
}

type PropertyPurpose : Integer enum
{
    Living = 1;
    Commercial = 2;
}

type PropertyState : String enum
{
    New;
    Renovated;
    VeryGood = 'Very Good';
    NeedsRenovation = 'Needs renovation';
}

type PropertyType : Integer enum
{
    Apartment = 1;
    House = 2;
}
