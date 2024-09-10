--Create a table student that contains studentID, Student_Name, age, registration date, department_id
CREATE TABLE student_info(
student_id INT PRIMARY KEY,
student_name VARCHAR (30) NOT NULL,
age INT CHECK (age >=18),
reg_date DATE DEFAULT GETDATE(),
department_id INT );


CREATE TABLE department_table (
department_id INT PRIMARY KEY,
separtment_name VARCHAR(20) UNIQUE
);
-- Initiating foreign key contrain to department_id in student table
ALTER TABLE student_info
ADD CONSTRAINT department_key FOREIGN KEY (department_id) REFERENCES department_table(department_id)

--Add columns to student_info
ALTER TABLE student_info
ADD contact VARCHAR (12) UNIQUE

-- Drop column from student_info
ALTER TABLE student_info
DROP COLUMN contact

ALTER TABLE student_info
DROP CONSTRAINT [UQ__student___870C3C8B8432B9CE]