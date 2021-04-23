-- 查询表 单行注释


/*
	多行注释

*/
-- 查询语句
SELECT * FROM students;
-- 插入语句
INSERT INTO students VALUES (2,"xiaohong",1);

-- 修改数据
UPDATE students SET sex=1 WHERE id=1;

-- 删除数据
DELETE FROM students WHERE id=1;

-- 修改表：添加字段,改变属性，删除字段
ALTER TABLE students ADD achievement DOUBLE(5,2);
ALTER TABLE students CHANGE NAME students_name VARCHAR(20);
ALTER TABLE students DROP achievement;

DESC students;

-- 删除表
DROP TABLE students;

-- 初始化表格
CREATE TABLE students(
	id INT,
	student_name VARCHAR(20),
	sex CHAR(1),
	age INT,
	achievement DOUBLE(5,2),
	team_Id INT,
	graduation_date DATE);


SELECT * FROM students;

INSERT INTO students VALUES(1,'xiaoming',0,7,100,1,'2020-7-1');
INSERT INTO students VALUES(2,'xiaohong',1,8,55,2,'2020-7-1');
INSERT INTO students VALUES(3,'xiaoliang',0,15,19,1,'2020-7-1');
INSERT INTO students VALUES(4,'xiaoq',1,18,88,1,'2020-7-1');
INSERT INTO students VALUES(5,'xiaow',0,2,65,3,'2020-7-1');
INSERT INTO students VALUES(6,'xiaoe',1,32,69,2,'2020-7-1');
INSERT INTO students VALUES(7,'xiaor',0,24,98,2,'2020-7-1');
INSERT INTO students VALUES(8,'xiaoa',1,14,87,1,'2020-7-1');
INSERT INTO students VALUES(9,'xiaos',0,5,78,3,'2020-7-1');
INSERT INTO students VALUES(10,'xiaod',1,9,90,1,'2020-7-1');
-- 简单查询
SELECT * FROM students;
SELECT id,student_name,sex,age FROM students;
SELECT id,student_name,age FROM students
SELECT id,student_name,age+18 FROM students;
SELECT id,student_name,age+18 AS 18_Year_later FROM students;
SELECT id,student_name,age+18 AS  '18年后' FROM students;
SELECT id,student_name,age+18 '18年后' FROM students;
-- 按条件查询
SELECT student_name,age,sex FROM students WHERE id=1;
SELECT student_name,age,sex FROM students WHERE age>10;
SELECT student_name,age,sex FROM students WHERE age>3 AND age<15;
SELECT student_name,age,sex FROM students WHERE id<>1;
SELECT student_name,age,sex FROM students WHERE age BETWEEN 3 AND 15;
SELECT student_name,age,sex FROM students WHERE age=3 OR age=15;
SELECT student_name,age,sex FROM students WHERE age IN (3,15,18);
SELECT student_name,age,sex FROM students WHERE student_name LIKE 'x%';
-- 排序
SELECT * FROM students;
SELECT student_name,age,sex,achievement FROM students ORDER BY achievement;
SELECT student_name,age,sex,achievement FROM students ORDER BY achievement DESC;
SELECT student_name,age,sex,achievement FROM students WHERE achievement>=60 ORDER BY achievement;
SELECT student_name,age,sex,achievement FROM students ORDER BY age DESC,achievement DESC;

-- 常用函数
SELECT * FROM students;
SELECT student_name FROM students;
SELECT student_name,UPPER(student_name) '大写姓名' FROM students;
SELECT student_name,SUBSTR(student_name,5,2) FROM students;
SELECT student_name FROM students WHERE SUBSTR(student_name,5,1)='e';
SELECT student_name, LENGTH(student_name) FROM students;

-- 聚合函数
SELECT SUM(achievement) FROM students;
SELECT AVG(achievement) FROM students;
SELECT MAX(achievement) FROM students;
SELECT MIN(achievement) FROM students;

SELECT COUNT(*) FROM students;

SELECT COUNT(achievement) FROM students;
SELECT COUNT(achievement) FROM students WHERE sex=0;
SELECT DISTINCT student_name FROM students;
SELECT sex,COUNT(*) FROM students GROUP BY sex;

SELECT team_Id,SUM(achievement) FROM students GROUP BY team_Id;

SELECT team_Id,SUM(achievement) FROM students GROUP BY team_Id HAVING SUM(achievement)>200;

SELECT * FROM students LIMIT 5;
SELECT * FROM students LIMIT 5,3;

