mysql> CREATE DATABASE college;
Query OK, 1 row affected (0.01 sec)

mysql> USE college;
Database changed
mysql> CREATE TABLE students (
    ->     student_id INT PRIMARY KEY,
    ->     student_name VARCHAR(100),
    ->     course_id INT
    -> );

Query OK, 0 rows affected (0.12 sec)


mysql> CREATE TABLE courses (
    ->     course_id INT PRIMARY KEY,
    ->     course_name VARCHAR(100)
    -> );

Query OK, 0 rows affected (0.07 sec)


mysql> INSERT INTO students (student_id, student_name, course_id)
    -> VALUES
    -> (1, 'armaan khan', 101),
    -> (2, 'shri sai shakti', 102),
    -> (3, 'jethalaal bhide', 101),
    -> (4, 'ibrahim dalvi', 103);
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0


mysql> INSERT INTO courses (course_id, course_name)
    -> VALUES
    -> (101, 'Computer Science'),
    -> (102, 'Business Administration'),
    -> (103, 'Film Studies');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0


mysql> SELECT
    ->     students.student_name,
    ->     courses.course_name
    -> FROM
    ->     students
    -> INNER JOIN
    ->     courses
    -> ON
    ->     students.course_id = courses.course_id;
+------------------+-------------------------+
| student_name     | course_name             |
+------------------+-------------------------+
| armaan khan      | Computer Science        |
|  shri sai shakti | Business Administration |
|jethalaal bhide   | Computer Science        |
| ibrahim dalvi    | Film Studies            |
+------------------+-------------------------+
4 rows in set (0.04 sec)

mysql>