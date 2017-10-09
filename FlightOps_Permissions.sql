---------------------------

/****** First create the user on the server; the user must already be in AD - ignore this if the user has already been created *****/
usE master

GO

CREATE LOGIN [AMF\jpowell] FROM WINDOWS WITH DEFAULT_DATABASE=[FlightOps], DEFAULT_LANGUAGE=[us_english];




/***** Then create the user in the database - ignore this if the user is already in the database *****/

USE FlightOps

GO

CREATE USER [AMF\jpowell] FOR LOGIN [AMF\jpowell] WITH DEFAULT_SCHEMA=[dbo];


select * from tbluser where name like '%brungs'


/***** You need to add the user to tblUser in the FlightOps database - ignore if already there *****/

USE FlightOps

GO

INSERT INTO tblUser ([UserID],[UserLogin], [Name], [IsSystem], [Title])

VALUES ('JPOW','AMF\jpowell', 'James Powell', 'N', 'Dispatch DFW'); 




/***** Then grant whatever role to the user, in this case FlightMgr *****/

USE FlightOps

GO

EXEC sp_addrolemember 'DutySched', 'AMF\rswanger';




/***** You can use this query to list the the different roles in FlightOps - the lower case role names are system roles *****/

USE FlightOps

GO

Select [name] From sysusers Where issqlrole = 1;


/***** You can use this query to list Role members in FlightOps, in this case the Dispatch role *****/

USE FlightOps

GO

SELECT dp.name AS Role , us.name AS UserName 

FROM sys.sysusers us right 

JOIN sys.database_role_members rm ON us.uid = rm.member_principal_id

JOIN sys.database_principals dp ON rm.role_principal_id = dp.principal_id

where us.name = 'AMF\rswanger'

WHERE dp.name = 'Accounting'

ORDER BY us.name;


