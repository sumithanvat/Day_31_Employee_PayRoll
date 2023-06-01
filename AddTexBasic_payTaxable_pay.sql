insert into employee_payroll add BasicPay DECIMAL(10,2);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add BasicPay DECIMAL(10,2)' at line 1
mysql> ALTER TABLE employee_payroll ADD basic_pay DECIMAL(10, 2);
Query OK, 0 rows affected (0.24 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE employee_payroll ADD deductions DECIMAL(10, 2);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+------------+----------+------------+-----------+------------+
| id | name   | salary   | date       | gender | phoneno    | address  | department | basic_pay | deductions |
+----+--------+----------+------------+--------+------------+----------+------------+-----------+------------+
|  1 | Bill   |  5000.00 | 2017-06-15 | m      | NULL       | NULL     | NULL       |      NULL |       NULL |
|  2 | Mike   |  8000.00 | 2018-01-10 | m      | NULL       | NULL     | NULL       |      NULL |       NULL |
|  3 | Millie | 10000.00 | 2018-05-01 | f      | NULL       | NULL     | NULL       |      NULL |       NULL |
|  4 | Dustin |  4000.00 | 2018-02-20 | f      | NULL       | NULL     | NULL       |      NULL |       NULL |
|  5 | Jack   |  9000.00 | 2019-10-05 | m      | NULL       | NULL     | NULL       |      NULL |       NULL |
|  6 | Vecna  | 12000.00 | 2020-03-25 | f      | NULL       | NULL     | NULL       |      NULL |       NULL |
|  7 | sumit  | 20000.00 | 2023-06-01 | m      | 4545454545 | Jabalpur | IT         |      NULL |       NULL |
+----+--------+----------+------------+--------+------------+----------+------------+-----------+------------+
7 rows in set (0.00 sec)

mysql> ALTER TABLE employee_payroll ADD taxable_pay DECIMAL(10, 2);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE employee_payroll ADD income_tax DECIMAL(10, 2);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE employee_payroll ADD net_pay DECIMAL(10, 2);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+--------+----------+------------+--------+------------+----------+------------+-----------+------------+-------------+------------+---------+
| id | name   | salary   | date       | gender | phoneno    | address  | department | basic_pay | deductions | taxable_pay | income_tax | net_pay |
+----+--------+----------+------------+--------+------------+----------+------------+-----------+------------+-------------+------------+---------+
|  1 | Bill   |  5000.00 | 2017-06-15 | m      | NULL       | NULL     | NULL       |      NULL |       NULL |        NULL |       NULL |    NULL |
|  2 | Mike   |  8000.00 | 2018-01-10 | m      | NULL       | NULL     | NULL       |      NULL |       NULL |        NULL |       NULL |    NULL |
|  3 | Millie | 10000.00 | 2018-05-01 | f      | NULL       | NULL     | NULL       |      NULL |       NULL |        NULL |       NULL |    NULL |
|  4 | Dustin |  4000.00 | 2018-02-20 | f      | NULL       | NULL     | NULL       |      NULL |       NULL |        NULL |       NULL |    NULL |
|  5 | Jack   |  9000.00 | 2019-10-05 | m      | NULL       | NULL     | NULL       |      NULL |       NULL |        NULL |       NULL |    NULL |
|  6 | Vecna  | 12000.00 | 2020-03-25 | f      | NULL       | NULL     | NULL       |      NULL |       NULL |        NULL |       NULL |    NULL |
|  7 | sumit  | 20000.00 | 2023-06-01 | m      | 4545454545 | Jabalpur | IT         |      NULL |       NULL |        NULL |       NULL |    NULL |
+----+--------+----------+------------+--------+------------+----------+------------+-----------+------------+-------------+------------+---------+
7 rows in set (0.00 sec)