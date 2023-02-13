SELECT ABS(-243.5);
SELECT ACOS(0.25);
SELECT ASIN(0.25);
SELECT ATAN(2.5);
SELECT CEIL(25.75);
SELECT CEILING(25.75);
SELECT COS(30);
SELECT COT(6);
SELECT DEGREES(1.5);
SELECT 10 DIV 5;
SELECT EXP(1);
SELECT FLOOR(25.75);
SELECT GREATEST(30, 2, 36, 81, 125);
SELECT LEAST(30, 2, 36, 81, 125);
SELECT LN(2);
SELECT LOG(2);
SELECT LOG2(6);
SELECT MOD(18, 4);
SELECT PI();
SELECT POW(4, 2);
SELECT RADIANS(180);
SELECT RAND();
SELECT ROUND(5.553);
SELECT SIGN(255.5);
SELECT SIN(2);
SELECT SQRT(25);
SELECT TAN(1.75);
SELECT ATAN2(7);
SELECT TRUNCATE(7.53635, 2);

##string functions
select ascii('b');
# char length  gives no.of charater 
select char_length('blood');
#character_length -- diff is not having any limit  for 1 string 
select character_length("bloodbank");
## concat used to merge or combine  does not give space ,,dual is a empty table
SELECT 'blood' '' 'frombank' FROM dual;

SELECT CONCAT('blood',' ','type');

 ## concat words_strings it gives  space b/w the words
 select concat_ws('_','Blood','Transaction');
 

## find_in_set()
select find_in_set('b','l,b,o,o,d,t');
## FORMAT 
SELECT FORMAT('0.981', Percent);
##insert()
SELECT INSTR('Ram','a');

##INSTR()
 select INSTR(' blood donation','e');
##Lcase
 select LCASE("Collect the required blood group");
 ##left
 select left('Blood group A+ ',5);
 ##lower
  SELECT LOWER('BLOOD.ORG');
 ##LPad
 select lpad('BLOODTYPE',8,'O');
 #ltrim
 select ltrim('123123BLOOD','123');
 # mid
select Mid(" BloodTransaction", 6, 2);
SELECT POSITION('e' IN 'BloodTransaction');
SELECT REPEAT('BLOOD', 2);
SELECT REVERSE(' BloodTransaction.org');
SELECT RIGHT(' BloodTransaction.org', 4);
select RPAD('BLOOD', 8, '0');

SELECT SPACE(7);
SELECT STRCMP(' Medical', ' MedicalPersonnel');
select SUBSTR('BloodDonation ', 1, 5);
SELECT SUBSTRING(' MedicalPersonnel', 9, 1);
select TRIM(LEADING '0' FROM '000123');
select ucase(" MedicalPersolnnel");





