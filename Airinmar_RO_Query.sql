--**** Execute to get RO's****
declare @startdate datetime
set @startdate = getdate()
declare @enddate datetime
set @enddate = Datediff(day,@startdate - 7, @startdate)
select a.PoNum,b.DateEntered,b.DatePrinted,a.Part,a.VendorPart as VendorPN,
'!' + a.SerialNo as SerialNo,
a.Description,
c.PoLine,a.QTYOrdered,a.RcvdQty,a.WoNo,
c.Message as LineMessage,a.DebitAccount as GLCode,b.Vendor,
d.Name as VendorName,
b.Buyer,replace(b.shiptolocation,'-','') as ShipToLocation,
b.ShipVia,a.OrderedPrice as QuotedPrice,
replace(a.recptlocation,'-','') as RecptLocation,
a.DateNeeded,a.CompleteYN AS POLineComplete,
b.CompleteYN AS POHeaderCompleteYN, 
a.LineType,
e.Message as MiscMessage
from polines a inner join poheader b on a.ponum = b.ponum inner join 
polinemsgs c on a.ponum = c.ponum 
inner join vendors d on b.Vendor = d.vendor
left outer join pomiscmsgs e on e.ponum = a.ponum
--left outer join RECEIVERS d on a.ponum = d.ponum
where 
--b.DateEntered > 20170731 
((a.PONUM like'c%' or a.ponum like 'w%' or a.ponum like 'r%') 
and B.completeYN = 'N')
or
((a.ponum like 'c%' or a.ponum like 'w%' or a.ponum like 'r%') and B.completeYN = 'y'
 and b.Dateentered between @startdate and @enddate)
order by b.completeYN
and a.ponum = 'C034832'

-- ADD HEADER COMPLETE Y IN THE LAST 7 DAYS .. ADD RECIEVED DATE FOR COMPLETED LINES
 -- eXPORT TO TXT SAMPLE FILE NEEDED WITH ^
 

-- *********************Script for RO's Ends Here **********************************--


select * from polinemsgs WHERE PONUM IN ('C042067','C042068')
select * from poheader where ponum in('C042067','C042068')
select * from vendors
select * from pomiscmsgs where ponum in('C042067','C042068') 

select * from polines where ponum in('c022961','c034832','c031208')

-- vENDOR name to be added 
-- Recieved location is the recpt location column. In most cases it shopuld be blank as we did not recieve the part.
-- Does Currency Mean the quote Price ?? If you need the actual currency used , all of the items listed are USD by default.
-- We currently do not have a way to track the date approved in DASH. However we can provide you with a value Y/N to show if its approved or not.
or ((d.TransDate =20170707) and a.CompleteYN = 'y')
order by b.completeYN

select * from polinemsgs where ponum = 'C042020'
select * from receivers where ponum  = 'C042020'
group by a.ponum,b.DateEntered,a.Part,a.Description,a.SerialNo,a.QtyOrdered,b.Vendor,b.Buyer,a.RecptLocation,a.Dateneeded,a.CompleteYN,
a.LineType,a.WoNo
--and a.ponum like '%c'
 a.ponum = 'C041843'
select * from polinemsgs where ponum  = 'C041843'like 'c%'
select vendor,name,billaddress1,billaddress2,billaddress3,billaddress4,billphoneno,emai1 from vendors where emai1 != ''


select top 1 from polinemsgs
--select a.PoNum,b.DateEntered,a.Part,a.Description,
--a.SerialNo,a.QTYOrdered,b.Vendor,b.Buyer,c.Message,
--a.RecptLocation,a.DateNeeded,a.CompleteYN,a.LineType,a.WoNo

select * 
from polines a inner join poheader b on a.ponum = b.ponum left outer join  
polinemsgs c on a.ponum = c.ponum where a.ponum = 'C040813'



SELECT * FROM RECEIVERS where transdate = 20170707

 WHERE PONUM = 'C040813'

select * from poheader

select * from vendors
select * from poexceptionsdetail

select * from squawks where aircraft = '35805' and squawkdate > 20170701