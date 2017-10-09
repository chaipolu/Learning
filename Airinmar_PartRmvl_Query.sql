select
h.Part,
	   h.SerialNo,
	   m.Description,
       Comments,
       HistDate=convert(datetime, h.HistDate),
       AcftType=IsNull(a.AcftType,m.AcftType),
       h.Location,
       h.InspCertNo,
       h.TotalHrs,
       h.TotalCys,
       h.TotalDays, 
       h.HrsSinceInstall,
       h.CysSinceInstall, 
       Action,
       h.RemovalType,
      OrigUserID,
      OrigTimeDateStamp
from MaintenanceHistory h
join PartMaster m on m.Part = h.Part
left join HistoryComments c on c.Part = h.Part
and c.SerialNo = h.SerialNo
and c.MaintCode = h.MaintCode
and c.OpNo = h.OpNo
and c.HistDate = h.HistDate
and c.HistTime = h.HistTime
left join Aircraft a on a.Aircraft=h.Location
WHERE c.histdate > '2017-09-18'
and action in ('R')
order by c.histdate


-- New query for missing records for Tammy 
-
AIrinmar_SlnoADDED_dATA
--
SELECT * FROM TRANSACTIONS WHERE TIMEDATESTAMP >'20170918' AND TRANSTYPE in('QADJ','TRNS')
AND TOLOC != 'ENG-OFF'
AND SERIALNO != '' and toloc like '%off%' and TOSTATUS = 'ui'

--select * from transactiontypes

SELECT * FROM TRANSACTIONS WHERE TIMEDATESTAMP >'20170825' and userid = 'Tleibham'
select * from transactions where userid = 'Tleibham'


--select * from transactions where transtype = 'REMV'

select * from partmaintenance where serialNo = '757D82'and part = '99-364212-1'

select * from partsercomments where part = '99-364212-1'

select * from poheader
select * from transactiontypes

select * FROM HISTORYCOMMENTS where serialno = '91-04468'

select * from partcomments where part = 'TEST'

