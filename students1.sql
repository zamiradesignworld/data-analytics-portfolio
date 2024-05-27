CREATE DATABASE students1;
USE students1;

CREATE TABLE class(
class_id INT NOT NULL,
class_name VARCHAR(50),
PRIMARY KEY (class_id)
);

CREATE TABLE uni_students(
student_id INT NOT NULL,
student_name VARCHAR(50),
student_surname VARCHAR(50),
group_number INT,
age INT,
city VARCHAR(50),
scholarship INT,
gender VARCHAR(10),
birth_date DATE,
PRIMARY KEY (student_id)
);

CREATE TABLE exam_marks(
department_id INT NOT NULL,
department_name VARCHAR(50),
student_id INT NOT NULL,
student_name VARCHAR(50),
marks INT,
PRIMARY KEY (department_id)
);

INSERT INTO uni_students (student_id, student_name, student_surname, age, group_number, city, scholarship, gender, birth_date)
VALUES
(01,'Kamola', 'Ibragimova', 22, 14, 'Tashkent', 5000, 'Female','2002-03-24'),
(02,'Damir', 'Kasimov', 23, 15, 'Samarkand', 4000, 'Male','2003-05-27'),
(03,'Axmad', 'Karimov', 27, 14, 'Jizzakh', 5000, 'Male','1997-02-2'),
(04,'Lola', 'Ibragimova', 23, 15, 'Tashkent', 41000, 'Female','2001-09-25'),
(05,'Andrey', 'Maxmudov', 21, 14, 'Bukhara', 84000, 'Male','2003-04-25'),
(06,'Maxim', 'Sattarov', 24, 15, 'Namangan', 41000, 'Male','2000-12-25'),
(07,'Aygul', 'Akbarova', 23, 15, 'Jizzakh', 7800, 'Female','2001-03-25'),
(08,'Sarvar', 'Ibragimov', 20, 14, 'Tashkent', 4511, 'Male','2004-08-25'),
(09,'Aziza', 'Maxmudova', 20, 15, 'Bukhara', 78000, 'Female','2004-11-25');


INSERT INTO class (class_id, class_name)
VALUES
(1, 'information_technology'),
(2, 'finance'),
(3, 'economy'),
(4, 'sociology'),
(5, 'biology'),
(6, 'security');


INSERT INTO exam_marks (department_id, department_name, student_id, student_name, marks)
VALUES
(10, 'information_technology', 01, 'Kamola', 101),
(20, 'finance', 02, 'Damir', 105),
(30, 'economy', 03, 'Axmad', 100),
(40, 'sociology', 04, 'Lola', 78),
(50, 'biology', 05, 'Andrey', 100),
(60, 'security', 06, 'Maxim', 100);


SELECT *
FROM exam_marks
WHERE marks > (
    SELECT MAX(marks)
    FROM exam_marks
    WHERE department_id = 105
);



