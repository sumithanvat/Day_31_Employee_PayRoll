mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+---------+
| id | name   | salary   | date       | gender | phoneno |
+----+--------+----------+------------+--------+---------+
|  1 | Bill   |  5000.00 | 2017-06-15 | m      | NULL    |
|  2 | Mike   |  8000.00 | 2018-01-10 | m      | NULL    |
|  3 | Millie | 10000.00 | 2018-05-01 | f      | NULL    |
|  4 | Dustin |  4000.00 | 2018-02-20 | f      | NULL    |
|  5 | Jack   |  9000.00 | 2019-10-05 | m      | NULL    |
|  6 | Vecna  | 12000.00 | 2020-03-25 | f      | NULL    |
+----+--------+----------+------------+--------+---------+
6 rows in set (0.00 sec)

mysql> ALTER TABLE employee_payroll ADD address VARCHAR(50);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+---------+---------+
| id | name   | salary   | date       | gender | phoneno | address |
+----+--------+----------+------------+--------+---------+---------+
|  1 | Bill   |  5000.00 | 2017-06-15 | m      | NULL    | NULL    |
|  2 | Mike   |  8000.00 | 2018-01-10 | m      | NULL    | NULL    |
|  3 | Millie | 10000.00 | 2018-05-01 | f      | NULL    | NULL    |
|  4 | Dustin |  4000.00 | 2018-02-20 | f      | NULL    | NULL    |
|  5 | Jack   |  9000.00 | 2019-10-05 | m      | NULL    | NULL    |
|  6 | Vecna  | 12000.00 | 2020-03-25 | f      | NULL    | NULL    |
+----+--------+----------+------------+--------+---------+---------+
6 rows in set (0.00 sec)

mysql> ALTER TABLE employee_payroll add department varchar(30);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+---------+---------+------------+
| id | name   | salary   | date       | gender | phoneno | address | department |
+----+--------+----------+------------+--------+---------+---------+------------+
|  1 | Bill   |  5000.00 | 2017-06-15 | m      | NULL    | NULL    | NULL       |
|  2 | Mike   |  8000.00 | 2018-01-10 | m      | NULL    | NULL    | NULL       |
|  3 | Millie | 10000.00 | 2018-05-01 | f      | NULL    | NULL    | NULL       |
|  4 | Dustin |  4000.00 | 2018-02-20 | f      | NULL    | NULL    | NULL       |
|  5 | Jack   |  9000.00 | 2019-10-05 | m      | NULL    | NULL    | NULL       |
|  6 | Vecna  | 12000.00 | 2020-03-25 | f      | NULL    | NULL    | NULL       |
+----+--------+----------+------------+--------+---------+---------+------------+
6 rows in set (0.00 sec)

mysql> insert into employee_payroll where name = 'Bill' phoneno = '4545454545';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where name = 'Bill' phoneno = '4545454545'' at line 1
mysql> insert into employee_payroll(name,salary,date,gender,phoneno,address,department) values ('sumit',20000,'2023-06-01','m','Jabalpur','IT');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into employee_payroll(name,salary,date,gender,phoneno,address,department) values ('sumit',20000,'2023-06-01','m','4545454545','Jabalpur','IT');
Query OK, 1 row affected (0.05 sec)

mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+------------+----------+------------+
| id | name   | salary   | date       | gender | phoneno    | address  | department |
+----+--------+----------+------------+--------+------------+----------+------------+
|  1 | Bill   |  5000.00 | 2017-06-15 | m      | NULL       | NULL     | NULL       |
|  2 | Mike   |  8000.00 | 2018-01-10 | m      | NULL       | NULL     | NULL       |
|  3 | Millie | 10000.00 | 2018-05-01 | f      | NULL       | NULL     | NULL       |
|  4 | Dustin |  4000.00 | 2018-02-20 | f      | NULL       | NULL     | NULL       |
|  5 | Jack   |  9000.00 | 2019-10-05 | m      | NULL       | NULL     | NULL       |
|  6 | Vecna  | 12000.00 | 2020-03-25 | f      | NULL       | NULL     | NULL       |
|  7 | sumit  | 20000.00 | 2023-06-01 | m      | 4545454545 | Jabalpur | IT         |
+----+--------+----------+------------+--------+------------+----------+------------+
7 rows in set (0.00 sec)