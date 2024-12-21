select * from M_product;
select * from M_Product_BOM;
select * from M_storageDetail;
select * from M_locator;
select * from M_ProductionPlan;
select * from M_productionLine;

select * from M_product P
inner join M_Product_BOM PB on pb.m_product_id = p.m_product_id
inner join M_storageDetail SD on SD.m_product_id = P.M_PRODUCT_ID
where p.isBOM = 'Y' and p.isActive = 'Y' and SD.qtytype = 'H' and isnta = 'N';

select PP.M_ProductionPlan_ID,PL.M_productionPlan_ID from M_productionPlan PP
Left Join M_productionLine PL on PL.M_ProductionPlan_ID = PP.M_productionPlan_ID where PL.m_productionPlan_id is not null;

select PP.M_locator_id, PL.Line,PL.M_product_ID, PL.M_productionPLan_ID from M_productionplan PP
inner join M_storageDetail SD on SD.M_product_id = PP.M_Product_id
left join m_productionline PL on pp.m_productionplan_id = PL.M_productionplan_id
where pp.M_Productionplan_id in(
select M_ProductionPlan_id from M_productionline) and SD.qtytype = 'H';

--M_PRODUCTBOM_ID
--p.value, SD.qty, P.isactive, P.isbom, m_locator_id

select P.* from M_Production P
left join M_productionPlan PP on PP.M_production_id = p.M_production_ID
left join M_ProductionLine PL on PL.M_ProductionPLan_ID = PP.M_productionPLan_ID



