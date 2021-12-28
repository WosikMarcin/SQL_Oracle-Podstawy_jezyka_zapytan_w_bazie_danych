1).
SELECT * FROM employees;
SELECT * FROM hr.employees;
2).
SELECT first_name, last_name, salary FROM employees;
3).
SELECT first_name AS imie, salary AS pensja_pracownika FROM employees;
SELECT first_name AS "imie", salary AS "pensja_pracownika" FROM employees;
SELECT first_name imie, salary pensja_pracownika FROM employees;
SELECT first_name "Imie", salary "Pensja pracownika" FROM employees;
4).
SELECT first_name, last_name FROM employees pracownicy;
SELECT first_name, last_name FROM employees "Pracownicy";
5).
SELECT first_name, salary FROM employees
ORDER BY salary;
SELECT first_name, salary FROM employees
ORDER BY salary ASC;
6).
SELECT first_name, salary FROM employees
ORDER BY salary DESC;
7).
SELECT first_name, last_name, salary FROM employees
ORDER BY last_name ASC, salary ASC;
SELECT first_name, last_name, salary FROM employees
ORDER BY last_name, salary;
8).
SELECT first_name, last_name, salary FROM employees
ORDER BY salary DESC;
9).
SELECT first_name, last_name, salary FROM employees
ORDER BY salary ASC;
SELECT first_name, last_name, salary FROM employees
ORDER BY salary;
10).
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date ASC;
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date;
11).
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date DESC;
12).
SELECT first_name, last_name, job_id, salary FROM employees
ORDER BY job_id, salary DESC;
SELECT first_name, last_name, job_id, salary FROM employees
ORDER BY job_id ASC, salary DESC;
13).
SELECT first_name, last_name, salary FROM employees
WHERE salary = 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary IN (12000);
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 12000 AND 12000;
14).
SELECT first_name, last_name FROM employees
WHERE last_name  = 'King';
SELECT first_name, last_name FROM employees
WHERE last_name IN ('King');
15).
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 9000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary >= 9000 AND salary <= 12000;
16).
SELECT first_name, last_name, salary FROM employees
WHERE salary = 9000 OR salary = 12000 OR salary = 24000;
SELECT first_name, last_name, salary FROM employees
WHERE salary IN (9000,12000,24000);
17).
SELECT first_name, last_name, salary FROM employees
WHERE salary NOT BETWEEN 9000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary < 9000 OR salary > 12000;
SELECT first_name, last_name, salary FROM employees
WHERE NOT (salary >= 9000 AND salary <= 12000);
18).
SELECT first_name, last_name, salary FROM employees
WHERE salary NOT IN (9000,12000,24000);
SELECT first_name, last_name, salary FROM employees
WHERE salary <> 9000 AND salary <> 12000 AND salary <> 24000;
19).
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 5000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary >= 5000 AND salary <= 12000;
20).
SELECT first_name, last_name, salary FROM employees
WHERE last_name = 'King' OR last_name = 'Fripp' OR last_name = 'Lee';
SELECT first_name, last_name, salary FROM employees
WHERE last_name IN ('King','Fripp','Lee');
21).
SELECT first_name, last_name, salary FROM employees
WHERE last_name IN ('King','Fripp') AND salary > 14000;
SELECT first_name,last_name,salary FROM employees
WHERE (last_name = 'King' OR last_name = 'Fripp') AND salary > 14000; 
22).
SELECT first_name last_name, department_id FROM employees
WHERE department_id NOT IN (20,50,80);
SELECT first_name,last_name,department_id FROM employees
WHERE department_id <> 20 AND department_id <> 50 AND department_id <> 80;
SELECT first_name,last_name,department_id FROM employees
WHERE NOT (department_id = 20 OR department_id = 50 OR department_id = 80);
23).
SELECT first_name,last_name,salary,job_id FROM employees
WHERE job_id = 'SH_CLERK' AND salary > 3000; 
SELECT first_name,last_name,salary,job_id FROM employees
WHERE job_id IN ('SH_CLERK') AND salary > 3000;
24).
SELECT first_name,last_name,salary,department_id FROM employees
WHERE salary NOT IN (250,7500,10000) AND department_id IN (10,20,80);
25).
SELECT first_name,last_name,salary FROM employees
WHERE last_name LIKE 'K%';







