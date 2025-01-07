SELECT  bpg.c_bpartner_id, COUNT(*),cb.value FROM um_bpartnergroup bpg
inner join C_bpartner cb on cb.c_bpartner_id=bpg.c_bpartner_id and cb.isactive='N'
WHERE bpg.c_bpartner_id IN (
    SELECT c_bpartner_id  from UM_BPartnerGroup Where um_bpgrouptype='NTV' and isactive='N') 
GROUP BY
    bpg.c_bpartner_id ,cb.value
HAVING COUNT(*) <=1;