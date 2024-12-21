
Select 
a.documentno ,h.name,
Case When c.line = 10 Then c.M_Product_ID End As Parent,
Case When c.line <> 10 Then c.M_Product_ID End As Child, h.M_Product_ID,h.value,c.line,
d.qty,d.qtytype,e.M_Locator_Id,e.value LocatorValue,f.name LocatorName,g.description,a.documentno, i.M_Lot_ID, i.Name
From M_Production a
Inner Join M_ProductionPlan b On (b.M_Production_ID=a.M_Production_ID)
Inner Join M_ProductionLine c On (c.M_ProductionPlan_ID=b.M_ProductionPLan_ID)
Inner Join M_StorageDetail d On (d.M_Product_ID=c.M_Product_ID)
Inner Join M_Locator e On (e.M_Locator_ID=d.M_Locator_ID)
Inner Join M_WareHouse f On (f.M_Warehouse_ID=e.M_Warehouse_ID)
Inner Join M_AttributeSetInstance g On (g.M_AttributeSetInstance_ID=d.M_AttributeSetInstance_ID)
Inner Join M_Lot i on i.M_Lot_ID = g.M_Lot_ID
Inner Join M_Product h On (h.M_Product_ID=c.M_Product_ID)
Where d.Qty > 0 And a.AD_Org_ID=1000102
Order By a.Documentno Desc, c.Line ASc;






