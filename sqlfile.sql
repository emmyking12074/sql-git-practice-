SELECT * FROM department_table 
SELECT * FROM student_info

ALTER TABLE STUDENT_INFO
ADD CONTACT VARCHAR(20)

SELECT * FROM student_info

INSERT INTO student_info
VALUES(1,'shade',20,'2024-02-14',5,'08139693633'),
       (2,'tobi',23,'2024-06-19',10,'08139693633'),
	   (3,'soji',35,'2024-09-15',15,'08139693633'),
	   (4,'awwal',42,'2024-07-16',20,'08139693633'),
	   (5,'shade',20,'2024-02-05',25,'08139693633')

	   drop table department_table
	   select * from department_table

	   ALTER TABLE department_table
	   drop constraint UQ__departme__451A1500E28A5177

	   alter table student_info
	   drop constraint [department_key]