select * from tblusers where lastname = 'Powell'
LASTNAME LIKE '%-%'

--delete from tblusers where empno = '011700'
firstname = 'Harrison'
NTACCOUNT LIKE '%JROBLES%'

select * from tblusers where Firstname = 'Chaitanya'

--Update tblusers set Password = 'JPdfw44$' where EmpNo = '011700'

select * from tblmenu

--UPDATE TBLUSERS SET FIRSTNAME = 'Joanna' where empno = '011924'

--firstname = 'Joanna'

SELECT * FROM TBLEMPLOYEE WHERE EMPNO = '011700'

--delete from tblemployee where empno = '011700'

-- Script to create a user in tblusers 

INSERT INTO tblUsers ([EmpNo],[FirstName],[MiddleName],[LastName],[NTAccount],[Company],[Base],[Department],[Position],[Phone],
[Extension],[Mailbox],[Email],[EmailAccess],[DistGroups],[Dash],[Flightops],[PRG],[as400],[SAMI],[StarTrac],[Other],[WrkStation],
[ReqbyFirst],[ReqbyLast],[ReqbyEmail],[ReqDate],[Login],[Password],[AcctExpires],[Comments],[MsgHeader],[Message],[LastAccess],[LastAccessIP],
[Menu])

VALUES ('066666','Brian','','Wilson', 'AMF\brwilson','910','DFW','W','Neudesic','','','brwilson','brwilson@ameriflight.com','No',
		'NULL','Yes','No','No','No','No','No',NULL,NULL,'Chai','Polumati','cpolumati@ameriflight.com',GetDate(),'brwilson','Neupw1#',NULL,NULL,nULL,nULL,nuLL,nULL,
		'111111110111000000'); 


--SELECT * FROM TBLEMPLOYEE

-- Script to create user in tblemployee

INSERT INTO TBLEMPLOYEE ([CoCode],[Base],[Dept],[EmpNo],[LastName],[FirstName],[MiddleName],[Suffix],[DOB],[DOH],[RehireDate],[EmpStatus],[JobTitle],[SSPOS])
Values (910,'DFW','W','066666','Wilson','Brian','','','1984-05-19','9/20/2016',NULL,'fULL','Neudesic','No')