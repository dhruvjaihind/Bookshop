using { sap.capire.bookshop as my } from '../db/schema';

@path: '/sap/opu/odata/sap/AdminEndpoint'
service AdminService @(_requires:'admin') {
  @odata.draft.enabled
  entity Books as projection on my.Books;
  entity Book as projection on my.Book;
  @odata.draft.enabled
  entity Authors as projection on my.Authors;
 // @odata.draft.enabled
  entity Orders as select from my.Orders;
}