 USE university_profile;

#1
 CREATE TABLE marks_sem1 LIKE Student;
 INSERT INTO marks_sem1 SELECT * FROM Student;
 ALTER TABLE marks_sem1 DROP COLUMN name;
 ALTER TABLE marks_sem1 DROP COLUMN dob;
 ALTER TABLE marks_sem1 DROP COLUMN yjoin;
 ALTER TABLE marks_sem1 DROP COLUMN gender;
 ALTER TABLE marks_sem1 DROP COLUMN team;
 ALTER TABLE marks_sem1 ADD PRIMARY KEY (rollno);

#2
 CREATE TABLE Faculty(name VARCHAR(20),fid CHAR(4) NOT NULL ,subject VARCHAR(20));
 INSERT INTO Faculty(name,fid,subject) VALUES ("kakashi",4003,"math"),("guy",5002,"sports"),("kurenai",5038,"eng");

#3
 CREATE TABLE Sem1(subj_id CHAR(4) NOT NULL,subject VARCHAR(20),fid CHAR(4),cap INTEGER,campus INTEGER);
 ALTER TABLE Sem1 ADD PRIMARY KEY (subj_id);
 ALTER TABLE Sem1 MODIFY COLUMN fid char(4) NULL, add key(fid);
 ALTER TABLE Sem1 MODIFY COLUMN campus integer NULL, add key(campus);

#4
 ALTER TABLE Campus ADD PRIMARY KEY (cid);

#5
 ALTER TABLE Student DROP COLUMN math;
 ALTER TABLE Srudent DROP COLUMN sci;
 ALTER TABLE Srudent DROP COLUMN eng;
 ALTER TABLE Srudent DROP COLUMN social;
 ALTER TABLE Srudent DROP COLUMN sports;
 ALTER TABLE Student ADD cid integer;
 ALTER TABLE Student ADD FOREIGN KEY (cid) REFERENCES Campus(cid);
 UPDATE Student SET cid = 109 WHERE rollno = 33;
 UPDATE Student SET cid = 101 WHERE rollno = 58;
 UPDATE Student SET cid = 110 WHERE rollno = 27;
 UPDATE Student SET cid = 104 WHERE rollno = 56;
 UPDATE Student SET cid = 104 WHERE rollno = 11;
 UPDATE Student SET cid = 101 WHERE rollno = 50;
 UPDATE Student SET cid = 113 WHERE rollno = 7;
 UPDATE Student SET cid = 107 WHERE rollno = 21;
 UPDATE Student SET cid = 109 WHERE rollno = 52;
 UPDATE Student SET cid = 109 WHERE rollno = 34;
 UPDATE Student SET cid = 110 WHERE rollno = 46;
 alter table student add foreign key ( rollno ) references marks_sem1 (rollno);
