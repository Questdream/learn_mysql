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



-- 约束条件





