@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clients'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #B,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_CLIENTE_4460
  as select from ztb_cliente_4460 as Clients

    inner join   ztb_clnt_lb_4460 as RelCliBok on RelCliBok.id_cliente = Clients.id_cliente
{
  key RelCliBok.id_libro  as BookID,
  key Clients.id_cliente  as ClientID,
  key Clients.tipo_acceso as AccesType,
      Clients.nombre      as Name,
      Clients.apellidos   as Lastname,
      Clients.email       as Email,
      Clients.url         as Images
}
