mysql> ALTER TABLE employee_payroll add gender varchar(6);
Query OK, 0 rows affected (0.33 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE employee_payroll SET gender = 'm' WHERE name = 'Jack';
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll SET gender = 'm' WHERE name = 'Bill';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll SET gender = 'm' WHERE name = 'Mike';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll SET gender = 'f' where name = 'Millie';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll SET gender = 'f' where name = 'Vecna';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll SET gender = 'f' where name = 'Vecn';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE employee_payroll SET gender = 'f' where name = 'Dustin';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+
| id | name   | salary   | date       | gender |
+----+--------+----------+------------+--------+
|  1 | Bill   |  5000.00 | 2017-06-15 | m      |
|  2 | Mike   |  8000.00 | 2018-01-10 | m      |
|  3 | Millie | 10000.00 | 2018-05-01 | f      |
|  4 | Dustin |  4000.00 | 2018-02-20 | f      |
|  5 | Jack   |  9000.00 | 2019-10-05 | m      |
|  6 | Vecna  | 12000.00 | 2020-03-25 | f      |
+----+--------+----------+------------+--------+
6 rows in set (0.00 sec)