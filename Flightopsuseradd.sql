use master

GO

CREATE LOGIN [AMF\hduong] FROM WINDOWS WITH DEFAULT_DATABASE=[FlightOps], DEFAULT_LANGUAGE=[us_english];


USE FlightOps

GO


CREATE USER [AMF\hduong] FOR LOGIN [AMF\hduong] WITH DEFAULT_SCHEMA=[dbo];

/***** You need to add the user to tblUser in the FlightOps database - ignore if already there *****/

USE FlightOps

GO

INSERT INTO tblUser ([UserID],[UserLogin], [Name], [IsSystem], [Title])

VALUES ('hduo','AMF\hduong', 'Henry Duong ', 'N', 'Dispatch, DFW'); 

Accounting


USE FlightOps

GO

EXEC sp_addrolemember 'Dispatch', 'AMF\hduong';


USE FlightOps

GO

Select [name] From sysusers Where issqlrole = 1;
