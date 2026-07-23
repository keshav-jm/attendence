-- Smart Attendance Monitoring System
DROP DATABASE IF EXISTS attendance_system;
CREATE DATABASE attendance_system;
USE attendance_system;

CREATE TABLE faculty(
 faculty_id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100),
 email VARCHAR(100) UNIQUE,
 password VARCHAR(100)
);

CREATE TABLE student(
 student_id INT AUTO_INCREMENT PRIMARY KEY,
 roll_no VARCHAR(20) UNIQUE,
 name VARCHAR(100),
 email VARCHAR(100) UNIQUE,
 department VARCHAR(50),
 semester INT,
 password VARCHAR(100)
);

CREATE TABLE subject(
 subject_id INT AUTO_INCREMENT PRIMARY KEY,
 subject_name VARCHAR(100),
 subject_code VARCHAR(20),
 faculty_id INT,
 FOREIGN KEY(faculty_id) REFERENCES faculty(faculty_id)
);

CREATE TABLE attendance(
 attendance_id INT AUTO_INCREMENT PRIMARY KEY,
 student_id INT,
 subject_id INT,
 attendance_date DATE,
 status ENUM('PRESENT','ABSENT'),
 FOREIGN KEY(student_id) REFERENCES student(student_id),
 FOREIGN KEY(subject_id) REFERENCES subject(subject_id)
);

CREATE TABLE notification(
 notification_id INT AUTO_INCREMENT PRIMARY KEY,
 student_id INT,
 message VARCHAR(255),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY(student_id) REFERENCES student(student_id)
);

INSERT INTO faculty(name,email,password) VALUES('Faculty 1','faculty1@college.edu','pass1');
INSERT INTO faculty(name,email,password) VALUES('Faculty 2','faculty2@college.edu','pass2');
INSERT INTO faculty(name,email,password) VALUES('Faculty 3','faculty3@college.edu','pass3');
INSERT INTO faculty(name,email,password) VALUES('Faculty 4','faculty4@college.edu','pass4');
INSERT INTO faculty(name,email,password) VALUES('Faculty 5','faculty5@college.edu','pass5');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE001','Student 1','student1@college.edu','CSE',3,'pass1');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE002','Student 2','student2@college.edu','CSE',3,'pass2');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE003','Student 3','student3@college.edu','CSE',3,'pass3');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE004','Student 4','student4@college.edu','CSE',3,'pass4');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE005','Student 5','student5@college.edu','CSE',3,'pass5');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE006','Student 6','student6@college.edu','CSE',3,'pass6');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE007','Student 7','student7@college.edu','CSE',3,'pass7');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE008','Student 8','student8@college.edu','CSE',3,'pass8');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE009','Student 9','student9@college.edu','CSE',3,'pass9');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE010','Student 10','student10@college.edu','CSE',3,'pass10');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE011','Student 11','student11@college.edu','CSE',3,'pass11');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE012','Student 12','student12@college.edu','CSE',3,'pass12');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE013','Student 13','student13@college.edu','CSE',3,'pass13');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE014','Student 14','student14@college.edu','CSE',3,'pass14');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE015','Student 15','student15@college.edu','CSE',3,'pass15');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE016','Student 16','student16@college.edu','CSE',3,'pass16');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE017','Student 17','student17@college.edu','CSE',3,'pass17');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE018','Student 18','student18@college.edu','CSE',3,'pass18');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE019','Student 19','student19@college.edu','CSE',3,'pass19');
INSERT INTO student(roll_no,name,email,department,semester,password) VALUES('CSE020','Student 20','student20@college.edu','CSE',3,'pass20');
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('Java','CS301',1);
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('DBMS','CS302',2);
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('OS','CS303',3);
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('CN','CS304',4);
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('AI','CS305',5);
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('Python','CS306',1);
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('DSA','CS307',2);
INSERT INTO subject(subject_name,subject_code,faculty_id) VALUES('Web','CS308',3);
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-01','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-01','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-01','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-01','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-01','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-02','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-02','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-02','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-02','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-02','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-03','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-03','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-03','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-03','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-03','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-04','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-04','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-04','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-04','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-04','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-05','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-05','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-05','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-05','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-05','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-06','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-06','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-06','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-06','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-06','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-07','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-07','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-07','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-07','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-07','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-08','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-08','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-08','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-08','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-08','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-09','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-09','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-09','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-09','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-09','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(1,2,'2026-07-10','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(2,3,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(3,4,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(4,5,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(5,6,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(6,7,'2026-07-10','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(7,8,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(8,1,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(9,2,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(10,3,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(11,4,'2026-07-10','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(12,5,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(13,6,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(14,7,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(15,8,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(16,1,'2026-07-10','ABSENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(17,2,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(18,3,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(19,4,'2026-07-10','PRESENT');
INSERT INTO attendance(student_id,subject_id,attendance_date,status) VALUES(20,5,'2026-07-10','PRESENT');
INSERT INTO notification(student_id,message) VALUES(1,'Attendance reminder for Student 1');
INSERT INTO notification(student_id,message) VALUES(2,'Attendance reminder for Student 2');
INSERT INTO notification(student_id,message) VALUES(3,'Attendance reminder for Student 3');
INSERT INTO notification(student_id,message) VALUES(4,'Attendance reminder for Student 4');
INSERT INTO notification(student_id,message) VALUES(5,'Attendance reminder for Student 5');
INSERT INTO notification(student_id,message) VALUES(6,'Attendance reminder for Student 6');
INSERT INTO notification(student_id,message) VALUES(7,'Attendance reminder for Student 7');
INSERT INTO notification(student_id,message) VALUES(8,'Attendance reminder for Student 8');
INSERT INTO notification(student_id,message) VALUES(9,'Attendance reminder for Student 9');
INSERT INTO notification(student_id,message) VALUES(10,'Attendance reminder for Student 10');
INSERT INTO notification(student_id,message) VALUES(11,'Attendance reminder for Student 11');
INSERT INTO notification(student_id,message) VALUES(12,'Attendance reminder for Student 12');
INSERT INTO notification(student_id,message) VALUES(13,'Attendance reminder for Student 13');
INSERT INTO notification(student_id,message) VALUES(14,'Attendance reminder for Student 14');
INSERT INTO notification(student_id,message) VALUES(15,'Attendance reminder for Student 15');
INSERT INTO notification(student_id,message) VALUES(16,'Attendance reminder for Student 16');
INSERT INTO notification(student_id,message) VALUES(17,'Attendance reminder for Student 17');
INSERT INTO notification(student_id,message) VALUES(18,'Attendance reminder for Student 18');
INSERT INTO notification(student_id,message) VALUES(19,'Attendance reminder for Student 19');
INSERT INTO notification(student_id,message) VALUES(20,'Attendance reminder for Student 20');
