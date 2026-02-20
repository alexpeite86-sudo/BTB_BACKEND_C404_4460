@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categories'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZC_CATEGO_4460
  as select from ztb_catego_4460
{
  key bi_categ    as Category,
      descripcion as Description
}
