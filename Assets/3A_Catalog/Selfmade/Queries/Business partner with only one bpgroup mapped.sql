SELECT  bpg.c_bpartner_id, COUNT(*),cb.value FROM um_bpartnergroup bpg
inner join C_bpartner cb on cb.c_bpartner_id=bpg.c_bpartner_id and cb.isactive='N'
WHERE bpg.c_bpartner_id IN (
    SELECT c_bpartner_id  from UM_BPartnerGroup Where um_bpgrouptype='NTV' and isactive='N') 
GROUP BY
    bpg.c_bpartner_id ,cb.value
HAVING COUNT(*) <=1;

-----------------------------------------------

Optimized

SELECT  
    bpg.c_bpartner_id, 
    COUNT(*),
    cb.value 
FROM 
    c_bpartner cb
INNER JOIN 
    um_bpartnergroup bpg 
    ON bpg.c_bpartner_id = cb.c_bpartner_id 
    AND cb.isactive = 'Y'
INNER JOIN 
    UM_BPartnerGroup bpg_filter
    ON bpg.c_bpartner_id = bpg_filter.c_bpartner_id
    AND bpg_filter.um_bpgrouptype = 'NTV'
    AND bpg_filter.isactive = 'Y'
GROUP BY
    bpg.c_bpartner_id,
    cb.value
HAVING COUNT(*) <= 1;

