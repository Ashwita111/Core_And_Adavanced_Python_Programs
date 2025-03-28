mysql> use emp;
Database changed
mysql> desc student;;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id         | int         | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(50) | YES  |     | NULL    |                |
| last_name  | varchar(50) | YES  |     | NULL    |                |
| gender     | varchar(50) | YES  |     | NULL    |                |
| address    | varchar(50) | YES  |     | NULL    |                |
| phone_no   | double      | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

ERROR:
No query specified

mysql> DELETE FROM student;
Query OK, 10 rows affected (0.01 sec)

mysql> INSERT INTO student (first_name, last_name, gender, address, phone_no)
    -> VALUES
    -> ('Jyoti', 'Lohkare', 'Female', 'Pune, MH', 9322554849),
    -> ('Ashwita', 'Aher', 'Female', 'Mumbai, MH', 985851458),
    -> ('Omkar', 'Dhage', 'male', 'Nagar, MH', 966522634),
    -> ('Sayali', 'Gwade', 'Female', 'Satara, MH', 959652652),
    -> ('Mahesh', 'Chawan', 'male', 'Nashik, MH', 989551415);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student order by last_name asc;
+----+------------+-----------+--------+------------+------------+
| id | first_name | last_name | gender | address    | phone_no   |
+----+------------+-----------+--------+------------+------------+
| 12 | Ashwita    | Aher      | Female | Mumbai, MH |  985851458 |
| 15 | Mahesh     | Chawan    | male   | Nashik, MH |  989551415 |
| 13 | Omkar      | Dhage     | male   | Nagar, MH  |  966522634 |
| 14 | Sayali     | Gwade     | Female | Satara, MH |  959652652 |
| 11 | Jyoti      | Lohkare   | Female | Pune, MH   | 9322554849 |
+----+------------+-----------+--------+------------+------------+
5 rows in set (0.00 sec)

mysql> select gender ,count(*) as student_count from student group by gender;
+--------+---------------+
| gender | student_count |
+--------+---------------+
| Female |             3 |
| male   |             2 |
+--------+---------------+
2 rows in set (0.00 sec)

mysql>