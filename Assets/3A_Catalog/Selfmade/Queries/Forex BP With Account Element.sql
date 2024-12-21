select value,combination from c_validcombination VC
inner join c_bpartner BP on BP.c_bpartner_id = VC.C_bpartner_id
inner join UM_bpartnergroup BPG on BPG.c_bpartner_id = BP.C_bpartner_id
where  um_bpgroupType = 'NTV' and BPG.UM_isACTIVE = 'Y' and bp.ISACTIVE = 'Y'
and bp.value = '110005257'
and REGEXP_LIKE(combination,'11220|33100|33111|33116|33180|13883|13886|13889|33102|33112|33113|33883');

