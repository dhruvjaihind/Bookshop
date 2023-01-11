namespace sap.capire.bookshop;
using { Currency, managed } from '@sap/cds/common';
using { sap.capire.reusable.Products } from  '../reu' ;



entity Books : managed , AdditionalInformations{
  key ID   : Integer;
  title    : localized String(111);
  descr    : localized String(1111);
  author   : Association to Authors;
  stock    : Integer;
  price    : Decimal(9,2);
  currency : Currency;
}

entity Book : Products{
  author   : Association to Authors;
}

 @cds.autoexpose 
entity Authors  : managed {
  key ID   : Integer;
  name     : String(111);
  books    : Association to many Books on books.author = $self;
}

entity Orders : managed {
  key ID   : UUID;
  OrderNo  : String @title:'Order Number'; //> readable key
  Items    : Composition of many OrderItems on Items.parent = $self;
}
annotate Orders {
modifiedAt @odata.etag;
}

entity OrderItems {
  key ID   : UUID;
  parent   : Association to Orders;
  book     : Association to Books;
  amount   : Integer;
}

aspect AdditionalInformations {
  name : String(100) ;
  language: String(200) ;
}


