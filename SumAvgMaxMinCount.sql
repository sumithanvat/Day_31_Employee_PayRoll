mysql> select SUM(salary) FROM employee_payroll where gender = 'f';
+-------------+
| SUM(salary) |
+-------------+
|    26000.00 |
+-------------+
1 row in set (0.13 sec)

mysql> select AVG(salary) FROM employee_payroll;
+-------------+
| AVG(salary) |
+-------------+
| 8000.000000 |
+-------------+
1 row in set (0.00 sec)

mysql> select min(salary) from employee_payroll;
+-------------+
| min(salary) |
+-------------+
|     4000.00 |
+-------------+
1 row in set (0.07 sec)

mysql> select max(salary) from employee_payroll where gender = 'm';
+-------------+
| max(salary) |
+-------------+
|     9000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> select count(*) As employee_payroll;
+------------------+
| employee_payroll |
+------------------+
|                1 |
+------------------+
1 row in set (0.05 sec)

mysql> select count(*) As employee_count from employee_payroll;
+----------------+
| employee_count |
+----------------+
|              6 |
+----------------+
1 row in set (0.16 sec)

mysql> select count(*) As employee_count from employee_payroll group by gender;
+----------------+
| employee_count |
+----------------+
|              3 |
|              3 |
+----------------+
2 rows in set (0.09 sec)

mysql> select count(*) AS employee_count from employee_payroll group by gender;
+----------------+
| employee_count |
+----------------+
|              3 |
|              3 |
+----------------+
2 rows in set (0.00 sec)

mysql> select gender count(*) AS employee_count from employee_payroll group by gender;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(*) AS employee_count from employee_payroll group by gender' at line 1
mysql> select gender, count(*) AS employee_count from employee_payroll group by gender;
+--------+----------------+
| gender | employee_count |
+--------+----------------+
| m      |              3 |
| f      |              3 |
+--------+----------------+
2 rows in set (0.00 sec)