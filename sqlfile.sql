--DML QUERIES
--INSERT INTO DEPARTMENT_TABLE 
INSERT INTO department_table(department_id,department_name )
VALUES (1,'computer Science'),
       (2,'Statistics'),
	   3,'web Development')

--query to confirm your entries
SELECT * FROM department_table

INSERT INTO student_info

select * from student_info

--UPDATE VALUES SYNTAX UPDATE table_name SET column_to_update=values WHERE condition is met
--multiple values update 
UPDATE student_info
SET department_id=10
WHERE student_id IN (4,3);

SELECT * FROM student_info

--single update 
update student_info
set CONTACT='080999998888'
where student_id=5

--use case statement to update multiple rows
update student_info
set CONTACT= CASE
WHEN student_id=1 THEN '08139693633'
WHEN student_id=2 THEN '09139694733'
WHEN student_id=3 THEN '08145638788'
WHEN student_id=4 THEN '09178763533'
WHEN student_id=5 THEN '09176353533'
ELSE CONTACT
END
WHERE student_id IN (1,2,3,4,5)

--DELETE OPERATION
DELETE FROM student_info
WHERE student_id=3