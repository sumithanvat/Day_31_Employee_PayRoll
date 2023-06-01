 use payroll_service;                                                                                            Z
Database changed
mysql> insert into employee_payroll(name,salary,date) values('Bill',5000,'2017-06-15');
Query OK, 1 row affected (0.06 sec)

mysql> ^C
mysql> ^C
mysql> ^C
mysql> insert into employee_payroll(name,salary,date) values('Mike',8000,'2018-01-10');
Query OK, 1 row affected (0.05 sec)

mysql> insert into employee_payroll(name,salary,date) values('Millie',10000,'2018-05-1');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee_payroll(name,salary,date) values('Dustin',4000,'2018-02-20');
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee_payroll(name,salary,date) values('Jack','9000','2019-10-05');
Query OK, 1 row affected (0.05 sec)

mysql> insert into employee_payroll(name,salary,date) values('Vecna',12000,'2020-03-25');
Query OK, 1 row affected (0.06 sec)

mysql> select * from employee_payroll
    -> select * from employee_payroll;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from employee_payroll' at line 2
mysql> SELECT * FROM employee_payroll;
+----+--------+----------+------------+
| id | name   | salary   | date       |
+----+--------+----------+------------+
|  1 | Bill   |  5000.00 | 2017-06-15 |
|  2 | Mike   |  8000.00 | 2018-01-10 |
|  3 | Millie | 10000.00 | 2018-05-01 |
|  4 | Dustin |  4000.00 | 2018-02-20 |
|  5 | Jack   |  9000.00 | 2019-10-05 |
|  6 | Vecna  | 12000.00 | 2020-03-25 |
+----+--------+----------+------------+
6 rows in set (0.00 sec)

mysql>