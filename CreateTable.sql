mysql> use payroll_service
Database changed
mysql> create table employee_payroll(id INT AUTO_INCREMENT PRIMARY KEY,name varchar(20),salary DECIMAL(10,2),date DATE);
Query OK, 0 rows affected (1.15 sec)

mysql> SELECT*FROM employee_payroll;
Empty set (0.09 sec)

mysql>