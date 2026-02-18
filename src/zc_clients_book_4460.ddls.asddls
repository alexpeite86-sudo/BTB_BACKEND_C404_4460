@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Clients Books'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #B,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_clients_book_4460
  as select from ztb_clnt_lb_4460
{

  key id_libro                     as BookID,
      count( distinct id_cliente ) as Sales

  }
group by
  id_libro 
