mysql> use payroll_service;
Database changed
mysql> select salary FROM employee_payroll WHERE name = Jack;
ERROR 1054 (42S22): Unknown column 'Jack' in 'where clause'
mysql> select salary FROM employee_payroll WHERE name = jack;
ERROR 1054 (42S22): Unknown column 'jack' in 'where clause'
mysql> select salary FROM employee_payroll WHERE name = 'Jack';
+---------+
| salary  |
+---------+
| 9000.00 |
+---------+
1 row in set (0.07 sec)

mysql>