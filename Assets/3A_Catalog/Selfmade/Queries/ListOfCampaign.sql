select * from C_campaign c
inner join um_campsubproposal csp on csp.c_campaign_id = c.c_campaign_id
where c.isactive = 'Y' and um_discounttype = 'AD' and c.AD_org_id = 1000102;

select distinct(um_discounttype) from um_campsubproposal;