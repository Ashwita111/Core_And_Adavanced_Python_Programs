mysql> use ecommerce;
Database changed
mysql> create table employee(emp_id varchar(10) not null primary key,first_name varchar(10) not null,last_name varchar(10) not null,age int not null,email varchar(40)not null);
Query OK, 0 rows affected (0.13 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(10) | NO   |     | NULL    |       |
| last_name  | varchar(10) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| email      | varchar(40) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.06 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| employee            |
+---------------------+
2 rows in set (0.00 sec)

mysql> insert into employee(emp_id,first_name,last_name,age,email)values('E101','ASHWITA','
AHER','22','aherashwita@gmail.com');
Query OK, 1 row affected (0.05 sec)

mysql> select *from employee;
+--------+------------+-----------+-----+-----------------------+
| emp_id | first_name | last_name | age | email                 |
+--------+------------+-----------+-----+-----------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com |
+--------+------------+-----------+-----+-----------------------+
1 row in set (0.00 sec)

mysql> insert into employee(emp_id,first_name,last_name,age,email)values('E102','JYOTI','LO
HKARE','23','lohkarejyoti@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select *from employee;
+--------+------------+-----------+-----+------------------------+
| emp_id | first_name | last_name | age | email                  |
+--------+------------+-----------+-----+------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com  |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com |
+--------+------------+-----------+-----+------------------------+
2 rows in set (0.00 sec)

mysql> insert into employee(emp_id,first_name,last_name,age,email)values('E103','ANJALI','C
HAVHAN','26','chavhananjali@gmail.com');
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(emp_id,first_name,last_name,age,email)values('E104','SAYALI','GAVADE','24','gavadesayali@gmail.com'),('E105','NEHA','GAVADE','20','gavadeneha@gmail.com');

Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql> select *from employee where last_name IN('CHAVHAN','GAVADE');
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
+--------+------------+-----------+-----+-------------------------+
3 rows in set (0.00 sec)

mysql> select *from employee where last_name NOT IN('CHAVHAN','GAVADE');
+--------+------------+-----------+-----+------------------------+
| emp_id | first_name | last_name | age | email                  |
+--------+------------+-----------+-----+------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com  |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com |
+--------+------------+-----------+-----+------------------------+
2 rows in set (0.00 sec)

mysql> select *from employee;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>  select *from employee order by last_name;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>  select *from employee order by first_name;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>  select *from employee order by age;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>  select *from employee order by age desc;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>  select *from employee order by last_name desc;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>  select *from employee order by age>30;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.04 sec)

mysql>  select *from employee order by age<30;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E103   | ANJALI     | CHAVHAN   |  26 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>  update employee age='27' where emp_id='E103';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='27' where emp_id='E103'' at line 1
mysql>  update employee 'age'='27' where 'emp_id'='E103';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''age'='27' where 'emp_id'='E103'' at line 1
mysql>  update employee set 'age'='27' where 'emp_id'='E103';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''age'='27' where 'emp_id'='E103'' at line 1
mysql>  update employee set age='27' where emp_id='E103';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  select *from employee;
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| E101   | ASHWITA    | AHER      |  22 | aherashwita@gmail.com   |
| E102   | JYOTI      | LOHKARE   |  23 | lohkarejyoti@gmail.com  |
| E103   | ANJALI     | CHAVHAN   |  27 | chavhananjali@gmail.com |
| E104   | SAYALI     | GAVADE    |  24 | gavadesayali@gmail.com  |
| E105   | NEHA       | GAVADE    |  20 | gavadeneha@gmail.com    |
+--------+------------+-----------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql>