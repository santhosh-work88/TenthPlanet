select BP.M_PriceList_id,BPL.UM_DMSLocationID,BPG.um_BpGroupType from c_bpartner BP
Inner join c_Bpartner_Location BPL on BPL.C_Bpartner_id = BP.c_Bpartner_id
Inner join um_BPartnerGroup BPG on BPG.c_Bpartner_id = BPL.C_bpartner_id where bpg.um_bpgrouptype = 'ART'
and bp
and bpl.um_DMSLocationID is not null;

--M_PriceList_id
--UM_DMSLocationID
--UM_BpGroupType

select * from c_Bpartner;
select * from C_Bpartner_location;
select * from um_BPartnerGroup;
select * from m_storagedetail;
select * from M_pricelist;
select * from m_product;
select * from m_productprice;
select * from m_priceList_version;
select * from m_storagedet
