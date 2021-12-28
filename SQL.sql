Do pracy z SQL w bazie danych Oracle u�ywam Oracle SQL Developer - schemat HR.

1). Odczytaj wszystkie kolumny z schematu HR z tabeli employees.
SELECT * FROM employees;
SELECT * FROM hr.employees;
2). Odczytaj first_name, last_name i salary z tabeli employees;
SELECT first_name, last_name, salary FROM employees;
3). Nadaj alias imi� dla first_name i pensja pracownika dla salary, odczytaj first_name i salary z employees.
SELECT first_name AS imie, salary AS pensja_pracownika FROM employees;
SELECT first_name AS "imie", salary AS "pensja_pracownika" FROM employees;
SELECT first_name imie, salary pensja_pracownika FROM employees;
SELECT first_name "Imie", salary "Pensja pracownika" FROM employees;
4). Nadaj alias pracownicy dla tabeli employees, odczytaj first_name, last_name z employees.
SELECT pracownicy.first_name, pracownicy.last_name FROM employees pracownicy;
5). Odczytaj first_name, salary z employees, posortuj rosn�co ( po salary ).
SELECT first_name, salary FROM employees  
ORDER BY salary ASC;
SELECT first_name, salary FROM employees  
ORDER BY salary;
6). Odczytaj first_name, salary z employees, posortuj malej�co ( po salary ).
SELECT first_name, salary FROM employees 
ORDER BY salary DESC;
7). Odczytaj first_name, last_name, salary z employees posortuj rosn�co po last_name, rosn�co po salary.
SELECT first_name, last_name, salary FROM employees 
ORDER BY last_name ASC, salary ASC;
SELECT first_name, last_name, salary FROM employees 
ORDER BY last_name , salary;
8). Odczytaj najlepiej zarabiaj�c� osob� z employees.
SELECT first_name, last_name, salary FROM employees
ORDER BY salary DESC;
9). Odczytaj najgorzej zarabiaj�c� osob� z employees.
SELECT first_name, last_name, salary FROM employees
ORDER BY salary ASC;
SELECT first_name, last_name, salary FROM employees
ORDER BY salary;
10). Odczytaj najd�u�ej zatrudnion� osob�.
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date ASC;
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date;
11). Odczytaj ostatnia zatrudnion� osob�. 
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date DESC;
12). Odczytaj najlepiej zarabiaj�c� osob� na ka�dym stanowisku.
SELECT first_name, last_name, job_id, salary FROM employees
ORDER BY job_id, salary DESC;
SELECT first_name, last_name, job_id, salary FROM employees
ORDER BY job_id ASC, salary DESC;
13). Odczytaj osob� zarabiaj�c� 12 tys. z employees.
SELECT first_name, last_name, salary FROM employees
WHERE salary = 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary IN (12000);
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 12000 AND 12000;
14). Odczytaj osob� o nazwisku King.
SELECT first_name, last_name FROM employees
WHERE last_name  = 'King';
SELECT first_name, last_name FROM employees
WHERE last_name IN ('King');
15). Odczytaj osoby, kt�re zarabiaj� pomi�dzy 9 tys. a 12 tys. (w��cznie).
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 9000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary >= 9000 AND salary <= 12000;
16). Odczytaj osoby zarabiaj�ce 9 tys. lub 12 tys. lub 24 tys.
SELECT first_name, last_name, salary FROM employees
WHERE salary = 9000 OR salary = 12000 OR salary = 24000;
SELECT first_name, last_name, salary FROM employees
WHERE salary IN (9000,12000,24000);
17). Odczytaj wszystkie osoby opr�cz tych zarabiaj�cych pomi�dzy 9 tys. a 12 tys. (w��cznie)
SELECT first_name, last_name, salary FROM employees
WHERE salary NOT BETWEEN 9000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary < 9000 OR salary > 12000;
SELECT first_name, last_name, salary FROM employees
WHERE NOT (salary >= 9000 AND salary <= 12000);
18). Odczytaj osoby opr�cz tych zarabiaj�cych 9 tys. lub 12 tys. lub 24 tys.
SELECT first_name, last_name, salary FROM employees
WHERE salary NOT IN (9000,12000,24000);
SELECT first_name, last_name, salary FROM employees
WHERE salary <> 9000 AND salary <> 12000 AND salary <> 24000;
19). Odczytaj osoby zarabiaj�ce pomi�dzy 5 tys. a 12 tys. (w��cznie).
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 5000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary >= 5000 AND salary <= 12000;
20). Odczytaj osoby o nazwiskach King, Fripp, Lee. 
SELECT first_name, last_name, salary FROM employees
WHERE last_name = 'King' OR last_name = 'Fripp' OR last_name = 'Lee';
SELECT first_name, last_name, salary FROM employees
WHERE last_name IN ('King','Fripp','Lee');
21). Odczytaj osoby o nazwisku King lub Fripp zarabiaj�ce wi�cej ni� 14 tys. 
SELECT first_name, last_name, salary FROM employees
WHERE last_name IN ('King','Fripp') AND salary > 14000;
SELECT first_name,last_name,salary FROM employees
WHERE (last_name = 'King' OR last_name = 'Fripp') AND salary > 14000; 
22). Odczytaj osoby z dzia��w o identyfikatorach (department_id) innych ni� 20,50,80.
SELECT first_name last_name, department_id FROM employees
WHERE department_id NOT IN (20,50,80);
SELECT first_name,last_name,department_id FROM employees
WHERE department_id <> 20 AND department_id <> 50 AND department_id <> 80;
SELECT first_name,last_name,department_id FROM employees
WHERE NOT (department_id = 20 OR department_id = 50 OR department_id = 80);
23). Odczytaj osoby pracuj�ce na stanowiskach (job_id) SH_CLERK i zarabiaj�ce wi�cej ni�
3 tys.
SELECT first_name,last_name,salary,job_id FROM employees
WHERE job_id = 'SH_CLERK' AND salary > 3000; 
SELECT first_name,last_name,salary,job_id FROM employees
WHERE job_id IN ('SH_CLERK') AND salary > 3000;
24). Odczytaj osoby o pensji innej ni� 250,7500,10000 pracuj�ce w dzia�ach 10,20,80.
SELECT first_name,last_name,salary,department_id FROM employees
WHERE salary NOT IN (250,7500,10000) AND department_id IN (10,20,80);
25). Odczytaj osoby o nazwiskach zaczynaj�cych si� na liter� K.
SELECT first_name,last_name,salary FROM employees
WHERE last_name LIKE 'K%';
