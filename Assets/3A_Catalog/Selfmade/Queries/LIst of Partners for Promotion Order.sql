select bp.value,BP.M_PriceList_id,BPL.UM_DMSLocationID,BPG.um_BpGroupType 
from c_bpartner BP
Inner join um_BPartnerGroup BPG on BPG.c_Bpartner_id = BP.C_bpartner_id 
Inner join c_Bpartner_Location BPL on BPL.C_Bpartner_id = BPG.c_Bpartner_id
Inner Join M_priceList_version plv on bp.m_pricelist_id = plv.m_pricelist_id
where bp.ad_org_id = 1000102
and bp.UM_ISDMSCUSTOMER = 'Y'
and bp.isactive = 'Y'
and bpg.isactive = 'Y'
and bpg.um_bpgrouptype = 'ART'
and bpl.isactive = 'Y'
and bpl.isshipto = 'Y'
order by plv.validfrom desc fetch first 3 rows only ;

-- 1000102 - ho chi minh - R1 - HCM
-- 1000104 - Can Tho - R2 - CTO
-- 1000105 - Dong Nai - R3 - DNI
-- 1000107 - Nha Trang - R4 - KHA
-- 1000106 - Da Nang - R5 - DNG
-- 1000108 - Vinh - R6 - NAN
-- 1000103 - Ha Noi - R7 - HNI


select * from c_Bpartner;
select * from C_Bpartner_location;
select * from um_BPartnerGroup;
select * from m_storagedetail;
select * from M_pricelist;
select * from m_priceList_version;
select * from m_product;
select * from m_productprice;
select * from m_storagedet;
select * from m_productprice;

--M_PriceList_id
--UM_DMSLocationID
--UM_BpGroupType

select * from M_priceList pl
Inner Join M_priceList_version plv on bp.m_pricelist_id = plv.m_pricelist_id
order by plv.validfrom desc fetch first 1 rows only ;
