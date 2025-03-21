Enter password: *******
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 33
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.02 sec)

mysql> USE StudentManagementSystem;
Database changed
mysql> -- Student Table
mysql> CREATE TABLE Student (
    ->     StudentID INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     DateOfBirth DATE,
    ->     Gender VARCHAR(10),
    ->     Email VARCHAR(100),
    ->     Phone VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> -- Course Table
mysql> CREATE TABLE Course (
    ->     CourseID INT PRIMARY KEY,
    ->     CourseTitle VARCHAR(100),
    ->     Credits INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> -- Instructor Table
mysql> CREATE TABLE Instructor (
    ->     InstructorID INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     Email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> -- Enrollment Table
mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY,
    ->     EnrollmentDate DATE,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> -- Score Table
mysql> CREATE TABLE Score (
    ->     ScoreID INT PRIMARY KEY,
    ->     CourseID INT,
    ->     StudentID INT,
    ->     DateOfExam DATE,
    ->     CreditObtained INT,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> -- Feedback Table
mysql> CREATE TABLE Feedback (
    ->     FeedbackID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     Date DATE,
    ->     InstructorName VARCHAR(100),
    ->     Feedback TEXT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> -- Insert Records into Student Table
mysql> INSERT INTO Student VALUES
    -> (1, 'Jyoti', 'Lohkare', '2002-08-06', 'Female', 'jyoti@gmail.com', '9876543201'),
    -> (2, 'Ashwita', 'Aher', '2002-08-17', 'Female', 'ashwita@gmail.com', '9876543202'),
    -> (3, 'Sweety', 'Arude', '2001-07-14', 'Female', 'sweety@gmail.com', '9876543203'),
    -> (4, 'Sayali', 'Gawade', '2002-10-07', 'Female', 'sayali@gmail.com', '9876543204'),
    -> (5, 'Dimpi', 'Chavan', '2002-11-19', 'Female', 'dimpi@gmail.com', '9876543205');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Course Table
mysql> INSERT INTO Course VALUES
    -> (1, 'Mathematics', 4),
    -> (2, 'Physics', 3),
    -> (3, 'Chemistry', 4),
    -> (4, 'Biology', 3),
    -> (5, 'Computer Science', 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Instructor Table
mysql> INSERT INTO Instructor VALUES
    -> (1, 'Sunil', 'Mishra', 'sunil@gmail.com'),
    -> (2, 'Anita', 'Gupta', 'anita@gmail.com'),
    -> (3, 'Ramesh', 'Yadav', 'ramesh@gmail.com'),
    -> (4, 'Meena', 'Joshi', 'meena@gmail.com'),
    -> (5, 'Suresh', 'Kumar', 'suresh@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Enrollment Table
mysql> INSERT INTO Enrollment VALUES
    -> (1, '2025-01-15', 1, 1, 1),
    -> (2, '2025-02-10', 2, 2, 2),
    -> (3, '2025-03-05', 3, 3, 3),
    -> (4, '2025-04-01', 4, 4, 4),
    -> (5, '2025-05-20', 5, 5, 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Score Table
mysql> INSERT INTO Score VALUES
    -> (1, 1, 1, '2025-06-01', 85),
    -> (2, 2, 2, '2025-06-05', 90),
    -> (3, 3, 3, '2025-06-10', 75),
    -> (4, 4, 4, '2025-06-15', 88),
    -> (5, 5, 5, '2025-06-20', 92);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Feedback Table
mysql> INSERT INTO Feedback VALUES
    -> (1, 1, '2025-01-20', 'Sunil Mishra', 'Excellent teaching style'),
    -> (2, 2, '2025-02-15', 'Anita Gupta', 'Very helpful instructor'),
    -> (3, 3, '2025-03-10', 'Ramesh Yadav', 'Good course content'),
    -> (4, 4, '2025-04-05', 'Meena Joshi', 'Clear explanations provided'),
    -> (5, 5, '2025-05-25', 'Suresh Kumar', 'Engaging lectures');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+-------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email             | Phone      |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
|         1 | Jyoti     | Lohkare  | 2002-08-06  | Female | jyoti@gmail.com   | 9876543201 |
|         2 | Ashwita   | Aher     | 2002-08-17  | Female | ashwita@gmail.com | 9876543202 |
|         3 | Sweety    | Arude    | 2001-07-14  | Female | sweety@gmail.com  | 9876543203 |
|         4 | Sayali    | Gawade   | 2002-10-07  | Female | sayali@gmail.com  | 9876543204 |
|         5 | Dimpi     | Chavan   | 2002-11-19  | Female | dimpi@gmail.com   | 9876543205 |
+-----------+-----------+----------+-------------+--------+-------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+------------------+---------+
| CourseID | CourseTitle      | Credits |
+----------+------------------+---------+
|        1 | Mathematics      |       4 |
|        2 | Physics          |       3 |
|        3 | Chemistry        |       4 |
|        4 | Biology          |       3 |
|        5 | Computer Science |       5 |
+----------+------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------+----------+------------------+
| InstructorID | FirstName | LastName | Email            |
+--------------+-----------+----------+------------------+
|            1 | Sunil     | Mishra   | sunil@gmail.com  |
|            2 | Anita     | Gupta    | anita@gmail.com  |
|            3 | Ramesh    | Yadav    | ramesh@gmail.com |
|            4 | Meena     | Joshi    | meena@gmail.com  |
|            5 | Suresh    | Kumar    | suresh@gmail.com |
+--------------+-----------+----------+------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2025-01-15     |         1 |        1 |            1 |
|            2 | 2025-02-10     |         2 |        2 |            2 |
|            3 | 2025-03-05     |         3 |        3 |            3 |
|            4 | 2025-04-01     |         4 |        4 |            4 |
|            5 | 2025-05-20     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2025-06-01 |             85 |
|       2 |        2 |         2 | 2025-06-05 |             90 |
|       3 |        3 |         3 | 2025-06-10 |             75 |
|       4 |        4 |         4 | 2025-06-15 |             88 |
|       5 |        5 |         5 | 2025-06-20 |             92 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+----------------+-----------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback                    |
+------------+-----------+------------+----------------+-----------------------------+
|          1 |         1 | 2025-01-20 | Sunil Mishra   | Excellent teaching style    |
|          2 |         2 | 2025-02-15 | Anita Gupta    | Very helpful instructor     |
|          3 |         3 | 2025-03-10 | Ramesh Yadav   | Good course content         |
|          4 |         4 | 2025-04-05 | Meena Joshi    | Clear explanations provided |
|          5 |         5 | 2025-05-25 | Suresh Kumar   | Engaging lectures           |
+------------+-----------+------------+----------------+-----------------------------+
5 rows in set (0.00 sec)

mysql>