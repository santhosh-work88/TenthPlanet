

select distinct(bp.value) 
from c_bpartner bp 
right join UM_BPartnerGroup bpg on bpg.c_bpartner_id = bp.c_bpartner_id
right join c_bpartner_location bpl on bpl.c_bpartner_id = bpg.c_bpartner_id
where bp.isactive = 'Y'
and bpg.isactive = 'Y'
and bpl.isactive = 'Y'
and bpg.um_bpgrouptype = 'ART' 
and bp.ad_org_id=1000102 
and bp.um_customerprogram_id= 1000269
and bpl.isactive = 'Y'
and bpl.isbillto = 'Y'
and bpl.isshipto = 'Y';


select * from UM_BPartnerGroup;
select * from c_bpartner;
select * from c_bpartner_location;

select description from i_order order by created desc;
select * from i_order where dmssoline in (65466545662374,65466545662373,65466545662372);
select * from c_invoice where c_order_id in (161213924,161213925,161213922);

select * from c_invoice;
desc i_order;