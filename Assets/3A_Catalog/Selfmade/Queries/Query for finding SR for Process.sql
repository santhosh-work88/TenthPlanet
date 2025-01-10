Select 
--a.Name USERNAME, c.Name ROLENAME , 
e.Name PROCESSNAME , e.Value PROCESSVALUE, f.Name REGION, d.IsActive, d.IsReadWrite, g.Name Menu, g.IsActive MenuActive,
m.Name WindowName,l.Name TabName, k.Name FieldName, n.isReadWrite WindowRW, n.isActive WindowAct
From AD_User a
Inner Join AD_User_Roles b On b.AD_User_ID=a.AD_User_ID
Inner Join AD_Role c On c.AD_Role_ID=b.AD_Role_ID
Inner Join AD_Process_Access d On d.AD_Role_ID=b.AD_Role_ID
Inner Join AD_Org f On f.AD_Org_ID=d.AD_Org_ID
Inner Join AD_Process e On e.AD_Process_ID=d.AD_Process_ID
Left Join AD_Menu g on (g.AD_Process_ID=e.AD_Process_ID)
Left Join AD_Tab h On (h.AD_Process_ID=e.AD_Process_ID)
Left Join AD_Window i On (i.AD_Window_ID=h.AD_Window_ID)
Left Join AD_Column j On (j.AD_Process_ID=e.AD_Process_ID)
Left Join AD_Field k On (k.AD_Column_ID=j.AD_Column_ID)
Left Join AD_Tab l On (l.AD_Tab_ID=k.AD_Tab_ID)
Left Join AD_Window m On (m.AD_Window_ID=l.AD_Window_ID)
Left Join AD_Window_Access n On (n.AD_Window_ID=m.Ad_Window_ID And n.AD_Role_ID=c.AD_Role_ID)
Where c.AD_Role_ID=1002230 And b.isActive='Y'
--And e.Name='Generate Invoice from Receipt'
Order By e.Name, f.AD_Org_ID;
