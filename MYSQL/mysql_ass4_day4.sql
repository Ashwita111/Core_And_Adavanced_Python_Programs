 Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| information_schema      |
| my_database             |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| world                   |
+-------------------------+
8 rows in set (0.07 sec)

mysql> create database jointable;
Query OK, 1 row affected (0.03 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| information_schema      |
| jointable               |
| my_database             |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| world                   |
+-------------------------+
9 rows in set (0.00 sec)

mysql> use jointable;
Database changed
mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> desc jointable;
ERROR 1146 (42S02): Table 'jointable.jointable' doesn't exist
mysql> use jointable;
Database changed
mysql> show tables;
Empty set (0.05 sec)

mysql> create table employees(employee_id varchar(10) not null primary key,name varchar(10) not nu
ll,department_id varchar(10) not null);
Query OK, 0 rows affected (0.10 sec)

mysql> show tables;
+---------------------+
| Tables_in_jointable |
+---------------------+
| employees           |
+---------------------+
1 row in set (0.01 sec)

mysql> insert into employees value(1,'alice',1),(2,'bob',2),(3,'charlie',1),(4,'david','null'),(5,'eve',3);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employees;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | varchar(10) | NO   | PRI | NULL    |       |
| name          | varchar(10) | NO   |     | NULL    |       |
| department_id | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> desc employees table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table' at line 1
mysql> show tables;
+---------------------+
| Tables_in_jointable |
+---------------------+
| employees           |
+---------------------+
1 row in set (0.04 sec)

mysql> create database departments;
Query OK, 1 row affected (0.02 sec)

mysql> show tables;
+---------------------+
| Tables_in_jointable |
+---------------------+
| employees           |
+---------------------+
1 row in set (0.00 sec)

mysql> create table departments(department_id varchar(10) not null primary key,department_name var
char(10) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> select *from employees;
+-------------+---------+---------------+
| employee_id | name    | department_id |
+-------------+---------+---------------+
| 1           | alice   | 1             |
| 2           | bob     | 2             |
| 3           | charlie | 1             |
| 4           | david   | null          |
| 5           | eve     | 3             |
+-------------+---------+---------------+
5 rows in set (0.02 sec)

mysql>  insert into departments value(1,'HR'),(2,'IT'),(3,'finance'),(4,'marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from departments;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
| 1             | HR              |
| 2             | IT              |
| 3             | finance         |
| 4             | marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> desc employees;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | varchar(10) | NO   | PRI | NULL    |       |
| name          | varchar(10) | NO   |     | NULL    |       |
| department_id | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> select name,department_name from employees inner join departments on employees.department_i
d= departments.department_id;
+---------+-----------------+
| name    | department_name |
+---------+-----------------+
| alice   | HR              |
| bob     | IT              |
| charlie | HR              |
| eve     | finance         |
+---------+-----------------+
4 rows in set (0.01 sec)
mysql> select name,department_name from employees left join departments on employees.depar
tment_id= departments.department_id;
+---------+-----------------+
| name    | department_name |
+---------+-----------------+
| alice   | HR              |
| bob     | IT              |
| charlie | HR              |
| david   | NULL            |
| eve     | finance         |
+---------+-----------------+
5 rows in set (0.00 sec)

mysql> select name,department_name from departments left join employees on employees.depar
tment_id= departments.department_id;
+---------+-----------------+
| name    | department_name |
+---------+-----------------+
| charlie | HR              |
| alice   | HR              |
| bob     | IT              |
| eve     | finance         |
| NULL    | marketing       |
+---------+-----------------+
5 rows in set (0.02 sec)

mysql> select name,department_name from employees right join departments on employees.depa
rtment_id= departments.department_id;
+---------+-----------------+
| name    | department_name |
+---------+-----------------+
| charlie | HR              |
| alice   | HR              |
| bob     | IT              |
| eve     | finance         |
| NULL    | marketing       |
+------ --+-----------------+
5 rows in set (0.00 sec)

mysql>
mysql> select name,department_name from departments full join employees;
+---------+-----------------+
| name    | department_name |
+---------+-----------------+
| alice   | marketing       |
| alice   | finance         |
| alice   | IT              |
| alice   | HR              |
| bob     | marketing       |
| bob     | finance         |
| bob     | IT              |
| bob     | HR              |
| charlie | marketing       |
| charlie | finance         |
| charlie | IT              |
| charlie | HR              |
| david   | marketing       |
| david   | finance         |
| david   | IT              |
| david   | HR              |
| eve     | marketing       |
| eve     | finance         |
| eve     | IT              |
| eve     | HR              |
+---------+-----------------+
20 rows in set, 1 warning (0.02 sec)

mysql> select name,department_name from employees full join departments;
+---------+-----------------+
| name    | department_name |
+---------+-----------------+
| alice   | marketing       |
| alice   | finance         |
| alice   | IT              |
| alice   | HR              |
| bob     | marketing       |
| bob     | finance         |
| bob     | IT              |
| bob     | HR              |
| charlie | marketing       |
| charlie | finance         |
| charlie | IT              |
| charlie | HR              |
| david   | marketing       |
| david   | finance         |
| david   | IT              |
| david   | HR              |
| eve     | marketing       |
| eve     | finance         |
| eve     | IT              |
| eve     | HR              |
+---------+-----------------+
20 rows in set, 1 warning (0.00 sec)

mysql> select name,department_name from employees cross join departments;
+---------+-----------------+
| name    | department_name |
+---------+-----------------+
| alice   | marketing       |
| alice   | finance         |
| alice   | IT              |
| alice   | HR              |
| bob     | marketing       |
| bob     | finance         |
| bob     | IT              |
| bob     | HR              |
| charlie | marketing       |
| charlie | finance         |
| charlie | IT              |
| charlie | HR              |
| david   | marketing       |
| david   | finance         |
| david   | IT              |
| david   | HR              |
| eve     | marketing       |
| eve     | finance         |
| eve     | IT              |
| eve     | HR              |
+---------+-----------------+
20 rows in set (0.00 sec)

mysql> select *from employees;
+-------------+---------+---------------+
| employee_id | name    | department_id |
+-------------+---------+---------------+
| 1           | alice   | 1             |
| 2           | bob     | 2             |
| 3           | charlie | 1             |
| 4           | david   | null          |
| 5           | eve     | 3             |
+-------------+---------+---------------+
5 rows in set (0.00 sec)

mysql>