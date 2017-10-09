select a.FlightNum,a.FlightType,a.AircraftType,b.FlightDate,c.airportorig,c.airportdest,
c.BlockMin,
--c.BlockOut,
--c.BlockIn ,
E.EmployeeID,E.LastNAME,E.FirstName
,E.MiddleName from 
tblflight a inner join tblrun b on a.flightID = b.FlightID
INNER join tblrunleg c  on b.HeaderID = C.hEADERID  
RIGHT ouTER join tbllegcrew d on 
c.runlegID = d.RunlegId 
inner join tblPilot e on d.PilotID =E.PILOTid 
where b.FlightDate > '2016-09-30'
order by b.FlightDate

 --between '2017-04-01' and '2017-04-30'
 
 --select * from tblflight where startdate > '2016-09-30'
