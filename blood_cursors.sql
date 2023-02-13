create database BD;
use blood; 
CREATE TABLE donor_info(
  donorID int NOT NULL,
  firstName varchar(30) NOT NULL,
  PRIMARY KEY(DonorID)
);
CREATE TABLE donor_info_backup(
  donorID int NOT NULL,
  firstName varchar(30) NOT NULL,
  PRIMARY KEY(donorID)
);
INSERT INTO blood_info VALUES (10, 'Ram');
delimiter //  
CREATE PROCEDURE firstCurs()
BEGIN
DECLARE d INT DEFAULT 0;  
DECLARE donorID,firstName INT;  
DECLARE firstName, donorID VARCHAR(200);  
      
DECLARE Get_cur CURSOR FOR SELECT * FROM blood_info;  
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'  
    SET d = 1;  
    DECLARE CONTINUE HANDLER FOR SQLSTATE '23000'  
    SET d = 1;  
      
    OPEN Get_cur;  
    lbl: LOOP  
    IF d = 1 THEN  
    LEAVE lbl;  
    END IF;  
    IF NOT d = 1 THEN  
      
    FETCH Get_cur INTO donorID,firstName;
    INSERT INTO blood_info_backup VALUES(donorID, firstName);  
    END IF;  
    END LOOP;  
      
    CLOSE Get_cur;  
    END;  
    // 
CALL blood.firstCurs(); 
