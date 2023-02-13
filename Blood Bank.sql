create database bloodBank;
use bloodBank;
CREATE TABLE Donor(
donorID INT  NOT NULL ,
firstName VARCHAR( 50 ) NOT NULL,
lastname VARCHAR( 50 ) not null,
address VARCHAR( 60 ) not null,
email VARCHAR( 100 ) not null,
phone VARCHAR( 20 ) not null,
dob DATE not null,
bloodType varchar (3)NOT NULL ,
PRIMARY KEY ( donorID )
);

CREATE TABLE Recipient(
recipientID INT NOT NULL ,
firstName VARCHAR( 50 ) NOT NULL,
lastname VARCHAR( 50 ) not null,
address VARCHAR( 60 ) not null,
email VARCHAR( 100 ) not null,
phone VARCHAR( 20 ) not null,
dob DATE not null,
bloodType varchar (3)NOT NULL ,
PRIMARY KEY ( recipientID )
);

CREATE TABLE MedicalPersonnel(
empID INT  NOT NULL ,
firstName VARCHAR( 50 ) NOT NULL ,
lastname VARCHAR( 50 ) NOT NULL ,
address VARCHAR( 60 ) NOT NULL ,
email VARCHAR( 100 ) NOT NULL ,
phone VARCHAR( 20 ) NOT NULL ,
dob DATE NOT NULL ,
PRIMARY KEY ( empID )
);
CREATE TABLE BloodDonation(
bloodID INT( 11 ) ,
donorID INT( 11 ) NOT NULL ,
dateDonated DATETIME NOT NULL ,
quantity INT NOT NULL ,
PRIMARY KEY ( bloodID ) ,
FOREIGN KEY ( donorID ) REFERENCES
Donor( donorID )
);

CREATE TABLE BloodTransaction(
transactID INT( 11 ) ,
empID INT( 11 ) NOT NULL ,
dateOut DATETIME NOT NULL ,
quantity INT NOT NULL ,
recipientID INT( 11 ) NOT NULL ,
bloodID INT( 11 ) NOT NULL ,
PRIMARY KEY ( transactID ) ,
FOREIGN KEY ( empID ) REFERENCES
MedicalPersonnel( empID ) ,
FOREIGN KEY ( recipientID ) REFERENCES
Recipient( recipientID ) ,
FOREIGN KEY ( bloodID ) REFERENCES
BloodDonation( bloodID )
);
insert  into Donor  values(1,"Ram","Smith","Apple ave","ram@gmail.com ",8790234,'1967-12-14',"B-");
insert  into Donor  values(2,"Tim","Rogers"," Alen ave","trogres@gmail.com ",4867891,'1965-11-10',"O-");
insert  into Donor  values(3,"Divina","Gorospe","Blue ave","dgorospe@gmail.com ", 8566578,'1999-04-08',"A-");
insert  into Donor  values(4,"Tm","Rogers"," Alen ave","trogres@gmail.com ",7890123,'1985-11-10',"AB+");
Insert into donor values(5,"James","bond","green road", "jamesbond@gmail.com", 9867890,'1986-12-09',"O+");
Insert into donor values(6,"John","hary","yellow road", "john@gmail.com", 90987890,'1996-04-14',"O+");
Insert into donor values(7,"Gita","Sharma","John road", "gita@gmail.com", 98671234,'1996-04-02',"AB+");
Insert into donor values(8,"Olivia","Goros","Theodore Lowe", "olivia@gmail.com", 6757890,'1999-12-14',"B-");



insert into Recipient values(1,'Melissa','Sone','6216 Ash Ave','msone@gmail.com','368-478-3652','1935-03-15','AB-');
insert into Recipient values(2,'Chris','Cole','5465 Cherry Ave','ccole@gmail.com','516-141-5165','1936-02-27','B+');
insert into Recipient values(3,'Aspen','Holland','5447 Crew Ln','aholland@gmail.com','545-599-5465','1936-02-28','O-');
insert into Recipient values(4,'Sia','Ai','8441 Rym Ave','sai@gmail.com','236-144-3655','2000-02-17','A-');
insert into Recipient values(5,'Deanna','Riza','3654 Sierra Drive','driza@gmail.com','232-447-2622','1984-02-17','AB+');
insert into Recipient values(6,'Amelia','Williams','4567 Azusa','williams@gmail.com','142-255-1256','1998-11-17','O+');
insert into Recipient values(7,'Deanna','Riza','3654 Sierra Drive','driza@gmail.com','132-347-4622','1984-02-17','AB+');
insert into Recipient values(8,'Lev','Jhonsomn','1230 Olive Drive','Lev@gmail.com','113-307-1023','1988-05-15','O+');



insert into MedicalPersonnel values(1,"Sam","George","Red Ave","sgeorge@gmail.com",'9753142860','1955-03-05');
insert into MedicalPersonnel values(2,"Ella","Graham","Cora Ln","egraham@gmail.com",'785394025261','1968-04-02');
insert into MedicalPersonnel values(3,"Alice","Holland","6th Ave","aholland@gmail.com",'8290815432','1925-04-07');
insert into MedicalPersonnel values(4,"Kate","Kim","Cina Ave","kkim@gmail.com",'9948562301','1963-08-03');
insert into MedicalPersonnel values(5,"Deanna","Mane","Lime Drive","dmane@gmail.com",'8964201657','1942-03-09');
insert into MedicalPersonnel values(6,"Sofia","Williams"," Azusa Drive","sofia@gmail.com",'896421234','1990-08-19');
insert into MedicalPersonnel values(7,"Sofia","Williams"," Azusa Drive","sofia@gmail.com",'896421234','1990-08-19');

  
insert into BloodDonation values(3,1,'2016-01-01',1);
insert into BloodDonation values(2,2,'2018-02-02',1);
Insert into BloodDonation values(4,3,'2018-11-14',1);
Insert into BloodDonation values(5,4,'2018-04-22',1);
Insert into BloodDonation values(1,5,'2018-08-25',1);

insert into BloodTransaction values(20,1,'2018-01-01',1,1,3);
insert into BloodTransaction values(21,1,'2018-01-02',1,2,2);
insert into BloodTransaction values(22,3,'2018-01-03',1,3,4);
insert into BloodTransaction values(23,2,'2018-01-04',1,4,5);
insert into BloodTransaction values(24,2,'2018-01-05',1,5,1);

drop table BloodTransaction;
drop table BloodDonation;
select * from Donor;




###  check constraint
##select
select * from Donor 
where bloodType="O+"; 

select * from Donor 
where bloodType="O+" and firstName="james";

select phone from Donor 
where bloodType="AB+" or firstName="Tm";
select * from  Recipient
where not bloodType="AB-";


# like operator
Select * from Recipient
where firstName like 'S%';

Select * from Recipient
where firstName like '%a';

Select * from Recipient
WHERE lastname LIKE '_i%';


#AGGEGATE FUNCTIONS
Select Min(quantity)
From BloodDonation;

Select Max(donorID)
From BloodDonation;

SELECT SUM(quantity)
FROM BloodDonation;

select count(empID)
FROM MedicalPersonnel;

select avg(quantity)
from BloodDonation;



##Date FUNCTIONS
SELECT NOW();
SELECT firstName,dob   FROM Donor;

SELECT firstName, Extract(YEAR FROM dob) AS BirthYear FROM Donor;

select DATE_FORMAT(NOW(),'%d %b %y');


## Group by

SELECT donorID, dateDonated
FROM BloodDonation
GROUP BY dateDonated;

## orderby
SELECT bloodID, recipientID
FROM BloodTransaction
GROUP BY recipientID
ORDER BY (bloodID) asc;
## having 
select  firstName, bloodType
FROM Donor
GROUP BY firstName
having bloodType="AB+";


#grant
grant select ,update on  MedicalPersonnel to Sam;
# revoke
revoke select ,update on MedicalPersonnel from Sam;

## commit perm changes
DELETE FROM MedicalPersonnel
WHERE firstName=Deanna;
COMMIT;

## rollback
UPDATE Donor SET firstNAME ='Manish' WHERE firstNAME 
='Ram'; ROLLBACK;
select * from Donor;

## joins

#innerjoin
SELECT Donor.donorID, BloodDonation.bloodID, Donor.firstName
FROM Donor
INNER JOIN BloodDonation ON Donor.donorID=BloodDonation.donorID;


#Left inner
SELECT MedicalPersonnel.empID, BloodTransaction.dateOut, MedicalPersonnel.firstName
FROM MedicalPersonnel
LEFT JOIN BloodTransaction ON MedicalPersonnel.empID=BloodTransaction.empID;

#Right inner join
SELECT Recipient.recipientID, BloodTransaction.dateOut, Recipient.firstName
FROM Recipient
right JOIN BloodTransaction ON Recipient.recipientID=BloodTransaction.recipientID;

##FULL JOIN
SELECT Donor.lastname, BloodDonation.donorID
FROM Donor
FULL  JOIN BloodDonation ON Donor.donorID=BloodDonation.donorID
ORDER BY Donor.lastname;

SELECT * FROM MedicalPersonnel
LEFT JOIN BloodTransaction
ON  BloodTransaction.empID = MedicalPersonnel.empID
UNION ALL
SELECT * FROM MedicalPersonnel
RIGHT JOIN BloodTransaction
ON BloodTransaction.empID = MedicalPersonnel.empID;

#alter
ALTER TABLE Donor
ADD gender varchar(25);
select * from Donor;
ALTER TABLE Donor
DROP COLUMN gender;

#exists

SELECT donorID
FROM Donor
WHERE EXISTS (SELECT donorID FROM
Donor WHERE  bloodType="O+"); 

#all
SELECT ALL firstName
FROM Donor
WHERE TRUE; 

## any 
SELECT firstName
FROM Donor
WHERE donorID = ANY
  (SELECT donorID
  FROM BloodDonation
  WHERE quantity =1); 
##views
create view BloodStock as select
Donor.bloodType as 'Blood Type',
sum(BloodDonation.quantity) as 'In Stock'from
BloodDonation
inner join Donor on BloodDonation.donorID =
Donor.donorID
where BloodDonation.bloodID not in (select
bloodID from BloodTransaction)
group by bloodType;

create view BloodStock as select
Donor.bloodType as 'Blood Type',
sum(BloodDonation.quantity) as 'In Stock'from
BloodDonation
 join Donor on BloodDonation.donorID =
Donor.donorID;

drop view BloodStock;
SELECT * FROM BloodStock ; 

create view PatientSeen
as select
concat_ws(' ', m.firstName, m.lastName) as
'Medical Personnel',
concat_ws(' ', r.firstname, r.lastName) as 'Patient
Name',
dateOut as 'Date Seen'
From MedicalPersonnel m, BloodTransaction b,
Recipient r
where m.empID = b.empID AND r.recipientID
= b.recipientID
order by m.lastName ASC;

select * from PatientSeen;

create view PatientList
as select
concat_ws(', ', lastName, firstName) as Name,
bloodType as 'Blood Type',
date_format(from_days(to_days(now())-
to_days(dob)),'%y')+0 as Age,
address as Address,
email as Email,
phone as Phone
from Donor
union
select
concat_ws(', ', lastName, firstName) as
'PatientName',
bloodType as 'Blood Type',
date_format(from_days(to_days(now())-
to_days(dob)),'%y')+0 as Age,
address as Address,
email as Email,
phone as Phone
from Recipient
Order by Name;

select * from PatientList;


## Triggers
Use bloodbank;
SELECT * FROM Donor;
CREATE TRIGGER increase_bloodDonation AFTER UPDATE ON Donor
FOR EACH ROW SET @donorID = @donorID + 1;
-- Trigger put to use
UPDATE Donor
SET donorID = 1
WHERE donorID = 0;
-- View the result of Trigger
SELECT * FROM  Donor;



