/* 1 */
SELECT "This is SQL Exercise, Practice and Solution";
/* 2 */
SELECT 8,9,10; 
/* 3 */
SELECT 10+15;
/* 4*/
select 10+ 15-5*2;

/* 5*/
select distinct firstName from Donor;
/*6*/
select donorID,firstName,address from Donor 
where bloodType="O+";
/*7*/


/*11*/
select firstName FROM Donor where firstName not LIKE 'T%'
order by (firstName) desc;
/*15*/


/* 18*/
select * from bloodDonation
where quantity<2  or dateDonated>("2018-02-02");
/*19*/
select * from MedicalPersonnel
where empID in ( 2,4,6) ;
/*20*/
SELECT * 
FROM donor
WHERE donorID BETWEEN 1 AND 5;
/*21*/
SELECT * FROM donor
WHERE email LIKE '%/@%' ESCAPE '@';

/*22*/
SELECT distinct  Donor.firstName as donor_name , Recipient.firstName as recipient_name ,Recipient.bloodType
FROM Recipient , Donor
WHERE Donor.bloodType = Recipient.bloodType;

SELECT donor.bloodType AS "BLOODTYPE", Recipient.bloodType AS "recipient_bloodtype"
FROM donor,Recipient
WHERE donor.bloodType=Recipient.bloodType;
/*23*/
select * from BloodTransaction where dateOut>"2018-01-01";

