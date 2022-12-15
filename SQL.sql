Do pracy z SQL w bazie danych Oracle uzywam Oracle SQL Developer - schemat HR.

1). Odczytaj wszystkie kolumny z schematu HR z tabeli employees.
SELECT * FROM employees;
SELECT * FROM hr.employees;
2). Odczytaj first_name, last_name i salary z tabeli employees;
SELECT first_name, last_name, salary FROM employees;
3). Nadaj alias imie dla first_name i pensja pracownika dla salary, odczytaj first_name i salary z employees.
SELECT first_name AS imie, salary AS pensja_pracownika FROM employees;
SELECT first_name AS "imie", salary AS "pensja_pracownika" FROM employees;
SELECT first_name imie, salary pensja_pracownika FROM employees;
SELECT first_name "Imie", salary "Pensja pracownika" FROM employees;
4). Nadaj alias pracownicy dla tabeli employees, odczytaj first_name, last_name z employees.
SELECT pracownicy.first_name, pracownicy.last_name FROM employees pracownicy;
5). Odczytaj first_name, salary z employees, posortuj rosnaco ( po salary ).
SELECT first_name, salary FROM employees  
ORDER BY salary ASC;
SELECT first_name, salary FROM employees  
ORDER BY salary;
6). Odczytaj first_name, salary z employees, posortuj malejaco ( po salary ).
SELECT first_name, salary FROM employees 
ORDER BY salary DESC;
7). Odczytaj first_name, last_name, salary z employees posortuj rosnaco po last_name, rosnaco po salary.
SELECT first_name, last_name, salary FROM employees 
ORDER BY last_name ASC, salary ASC;
SELECT first_name, last_name, salary FROM employees 
ORDER BY last_name , salary;
8). Odczytaj najlepiej zarabiajaca osobê z employees.
SELECT first_name, last_name, salary FROM employees
ORDER BY salary DESC;
9). Odczytaj najgorzej zarabiajaca osobe z employees.
SELECT first_name, last_name, salary FROM employees
ORDER BY salary ASC;
SELECT first_name, last_name, salary FROM employees
ORDER BY salary;
10). Odczytaj najd³u¿ej zatrudniona osobe.
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date ASC;
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date;
11). Odczytaj ostatnio zatrudniona osobe. 
SELECT first_name, last_name, hire_date FROM employees
ORDER BY hire_date DESC;
12). Odczytaj najlepiej zarabiajaca osobe na ka¿dym stanowisku.
SELECT first_name, last_name, job_id, salary FROM employees
ORDER BY job_id, salary DESC;
SELECT first_name, last_name, job_id, salary FROM employees
ORDER BY job_id ASC, salary DESC;
13). Odczytaj osobe zarabiajaca 12 tys. z employees.
SELECT first_name, last_name, salary FROM employees
WHERE salary = 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary IN (12000);
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 12000 AND 12000;
14). Odczytaj osobe o nazwisku King.
SELECT first_name, last_name FROM employees
WHERE last_name  = 'King';
SELECT first_name, last_name FROM employees
WHERE last_name IN ('King');
15). Odczytaj osoby, które zarabiaja pomiedzy 9 tys. a 12 tys. (w³acznie).
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 9000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary >= 9000 AND salary <= 12000;
16). Odczytaj osoby zarabiajace 9 tys. lub 12 tys. lub 24 tys.
SELECT first_name, last_name, salary FROM employees
WHERE salary = 9000 OR salary = 12000 OR salary = 24000;
SELECT first_name, last_name, salary FROM employees
WHERE salary IN (9000,12000,24000);
17). Odczytaj wszystkie osoby oprocz tych zarabiajacych pomiedzy 9 tys. a 12 tys. (w³acznie)
SELECT first_name, last_name, salary FROM employees
WHERE salary NOT BETWEEN 9000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary < 9000 OR salary > 12000;
SELECT first_name, last_name, salary FROM employees
WHERE NOT (salary >= 9000 AND salary <= 12000);
18). Odczytaj osoby oprocz tych zarabiajacych 9 tys. lub 12 tys. lub 24 tys.
SELECT first_name, last_name, salary FROM employees
WHERE salary NOT IN (9000,12000,24000);
SELECT first_name, last_name, salary FROM employees
WHERE salary <> 9000 AND salary <> 12000 AND salary <> 24000;
19). Odczytaj osoby zarabiajace pomiedzy 5 tys. a 12 tys. (w³acznie).
SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 5000 AND 12000;
SELECT first_name, last_name, salary FROM employees
WHERE salary >= 5000 AND salary <= 12000;
20). Odczytaj osoby o nazwiskach King, Fripp, Lee. 
SELECT first_name, last_name, salary FROM employees
WHERE last_name = 'King' OR last_name = 'Fripp' OR last_name = 'Lee';
SELECT first_name, last_name, salary FROM employees
WHERE last_name IN ('King','Fripp','Lee');
21). Odczytaj osoby o nazwisku King lub Fripp zarabiajace wiecej ni¿ 14 tys. 
SELECT first_name, last_name, salary FROM employees
WHERE last_name IN ('King','Fripp') AND salary > 14000;
SELECT first_name,last_name,salary FROM employees
WHERE (last_name = 'King' OR last_name = 'Fripp') AND salary > 14000; 
22). Odczytaj osoby z dzia³ow o identyfikatorach (department_id) innych ni¿ 20,50,80.
SELECT first_name last_name, department_id FROM employees
WHERE department_id NOT IN (20,50,80);
SELECT first_name,last_name,department_id FROM employees
WHERE department_id <> 20 AND department_id <> 50 AND department_id <> 80;
SELECT first_name,last_name,department_id FROM employees
WHERE NOT (department_id = 20 OR department_id = 50 OR department_id = 80);
23). Odczytaj osoby pracujace na stanowiskach (job_id) SH_CLERK i zarabiajace wiecej niz
3 tys.
SELECT first_name,last_name,salary,job_id FROM employees
WHERE job_id = 'SH_CLERK' AND salary > 3000; 
SELECT first_name,last_name,salary,job_id FROM employees
WHERE job_id IN ('SH_CLERK') AND salary > 3000;
24). Odczytaj osoby o pensji innej ni¿ 250,7500,10000 pracujace w dzialach 10,20,80.
SELECT first_name,last_name,salary,department_id FROM employees
WHERE salary NOT IN (250,7500,10000) AND department_id IN (10,20,80);
25). Odczytaj osoby o nazwiskach zaczynajacych sie na litere K.
SELECT first_name,last_name,salary FROM employees
WHERE last_name LIKE 'K%';
26). Odczytaj osoby o nazwiskach zakonczonych na litere g.
SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%g';
27). Odczytaj osoby o nazwiskach zawierajacych "in".
SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%in%';
28). Odczytaj osoby oimionach kobiet (koñcza sie na litere "a").
SELECT first_name, last_name FROM employees
WHERE first_name LIKE '%a';
29). Odczytaj imiona meskie.
SELECT first_name, last_name FROM employees
WHERE first_name NOT LIKE '%a';
30). Odczytaj nazwy krajow o wieloczlonowej nazwie (np. United Kingdom).
SELECT country_name FROM countries
WHERE country_name LIKE '% %';
31). Odczytaj 10*2+5.
SELECT 10*2+5 FROM dual;
32). Odczytaj liczbe wszystkich pracownikow.
SELECT count(*) FROM employees;
33). Odczytaj liczbe wszystkich krajow.
SELECT count(*) FROM countries; 
34). Odczytaj liczbe osob o imieniach kobiet.
SELECT count(*) FROM employees
WHERE first_name LIKE '%a';
35). Odczytaj liczbe wszystkich pracownikow, employee_id, manager_id, commision_pct. 
SELECT COUNT(*),COUNT(employee_id),COUNT(manager_id),COUNT(commission_pct) FROM employees; 
36). Odczytaj job_id bez powtarzania (unikatowe dane).
SELECT DISTINCT(job_id) FROM employees;
37). Odczytaj last_name, commission_pct, zastap (null)-"0";
SELECT last_name,commission_pct,NVL(commission_pct,0) FROM employees;
38). Odczytaj srednia(pomijajac NULL za pomoca ulamka, srednia uwzgledniajac NULL
zastapione przez zero) dla commission_pct.
SELECT (SUM(commission_pct))/,(SUM(NVL(commission_pct,0)))/COUNT(*) FROM employees; 
39). Odczytaj nazwisko pierwsze wg alfabetu i ostatnie wg alfabetu.
SELECT MIN(last_name),MAX(last_name) FROM employees;
40). Odczytaj tylko osobe najkrocej zatrudniona i najdluzej zatrudniona.
SELECT MIN(hire_date),MAX(hire_date) FROM employees;
41). Odczytaj minimalna i maksymalna wyplate dla wszystkich osob.
SELECT MIN(salary),MAX(salary) FROM employees;
42). Odczytaj minimalna i maksymalna wyplate dla tych, ktorzy maja okreslone commission_pct.
SELECT MIN(salary),MAX(salary) FROM employees
WHERE commission_pct IS NOT NULL;
43). Odczytaj srednia pensje dla osob pracujacych na stanowisku IT_PROG. 
SELECT AVG(salary) FROM employees
WHERE job_id = 'IT_PROG'; 
44). Sprawdz kogo jest wiecej i kto srednio lepiej zarabia kobiety czy mezczyzni.
SELECT 'Kobiety' AS Plec,count(first_name),AVG(salary) FROM employees
WHERE first_name LIKE '%a'
UNION ALL
SELECT 'Mezczyzni' AS Plec,count(first_name),AVG(salary) FROM employees
WHERE first_name NOT LIKE '%a';
45). Nadaj alias praca dla tabeli employees, wyswietl pracownikow, ktorzy maja wynagrodzenie 
wieksze niz 10000, posortuj malejaco.
SELECT first_name,last_name,salary FROM employees praca
WHERE salary > 10000
ORDER BY salary DESC;
46). Odczytaj 5 najlepiej zarabijacyh osob.
SELECT first_name,last_name,salary FROM employees
WHERE rownum <= 5
ORDER BY salary DESC;
47). Odczytaj liczbe pracownikow na kazdym stanowisku.
SELECT DISTINCT(job_id), COUNT(job_id) FROM employees
GROUP BY job_id;
48). Odczytaj ile osob jest w podziale na stanowisko i dzial.
SELECT department_id,COUNT(department_id),job_id,COUNT(job_id) FROM employees
GROUP BY job_id,department_id
ORDER BY department_id,job_id;
49). Odczytaj osoby na kazdym stanowisku, tylko te stanowiska gdzie pracuje mniej niz 3 osoby.
SELECT job_id FROM employees
HAVING count(job_id) < 3;
50).Wyświetl na jakim stanowisku najbardziej opłaca sie pracować pod względem zarobków
(gdzie średnio zarabia się nawięcej)
SELECT job_id, AVG(salary) srednia FROM employees
WHERE ROWNUM = 1
GROUP BY job_id
ORDER BY srednia DESC;
51).Wyświetl na jakim stanowisku jest najwięcej osób zarabiających powyżej 8 tys.
SELECT job_id, COUNT(job_id) ilosc FROM employees
WHERE salary > 8000
GROUP BY job_id
ORDER BY ilosc DESC;
52).Wyświetl różnicę pomiędzy maksymalną a minimalną wypłata dla każdego stanowsika. 
Na jakim jest nawyższa ?   
SELECT job_id, MAX(salary), MIN(salary), MAX(salary) - MIN(salary) roznica FROM employees
GROUP BY job_id
ORDER BY roznica DESC;
53).Wyświetl liczbe wszystkich pracownikow, liczbe department_id, liczbe department_id bez powtarzania się (unikatowe dane)
SELECT COUNT(*), COUNT(department_id), COUNT(DISTINCT(department_id)) FROM employees;
54). Połacz tabele employees i departments (bez uzycia JOIN). 
SELECT * FROM employees, departments
WHERE employees.department_id = departments.department_id;
55). Połacz tabele employees i departments (bez uzycia JOIN), nadaj alias dla employees "e"
dla departments "d".
SELECT * FROM employees e, departments d
WHERE e.department_id = d.department_id;
56). Polacz tabele employees i departments z uzyciem JOIN, nadaj alias "e" dla employees,
"d" dla departments.
SELECT * FROM employees e JOIN departments d
ON e.department_id = d.department_id;
57). Polacz tabele employees i departments z uzyciem LEFT JOIN, nadaj alias "e" dla employees, "d" dla departments.
SELECT * FROM employees e LEFT JOIN departments d
ON e.department_id = d.department_id;
58). Polacz tabele employees i departments z uzyciem FULL JOIN, nadaj alias "e" dla employees, "d" dla departments. 
SELECT * FROM employees e FULL JOIN departments d 
ON e.department_id = d.department_id;
59). Polacz tabele employees i departments z uzyciem RIGHT JOIN, nadaj alias "e" dla employees, "d" dla departments.
SELECT * FROM employees e RIGHT JOIN departments d 
ON e.department_id = d.department_id;
60). Polacz tabele employees, departments i locations z uzyciem JOIN, odczytaj last_name, department_name i city, nadaj alias "e" 
dla employees "d" dla departments "l" dla locations.
SELECT e.last_name, d.department_name, l.city FROM employees e JOIN departments d
ON e.department_id = d.department_id JOIN locations l
ON d.location_id = l.location_id;
61).Zakladajac, ze kolumna "salary" to pensja miesieczna wyswietl imie, nazwisko i stawke godzinowa.
SELECT first_name, last_name, salary, salary/160 AS stawka_godzinowa FROM employees;
62).W tabeli "JOBS" znajdz kody stanowisk majacych "Manager" w nazwie.
SELECT job_title FROM jobs
WHERE job_title LIKE '%Manager%';
63). Wyswietl osoby pracujace na stanowiskach o kodach znalezionych w punkcie 62.
SELECT first_name, last_name, job_title FROM jobs j LEFT JOIN employees e
ON j.job_id = e.job_id
WHERE job_title LIKE '%Manager%';
64). Policz ile bezposrednio podwladnych ma kazdy Manager (pogrupuj po kolumnie manager_id).
SELECT manager_id, COUNT(manager_id) FROM employees
GROUP BY manager_id;
65). Wyswietl nazwisko pracownika i nazwe stanowiska na którym pracuje (połącz tabele employees i jobs).
SELECT e.last_name, j.job_title FROM jobs j LEFT JOIN employees e
ON j.job_id = e.job_id;
66). Wyswietl tylko te osoby, ktore nie zarobia wiecej na swoim stanowisku (ich pensja = max dla stanowiska)
SELECT first_name, last_name, salary, max_salary FROM employees e JOIN jobs j
ON e.job_id = j.job_id
WHERE e.salary = j.max_salary;
67) Wyswietl nazwisko i miasto, w ktorym pracuja osoby.
SELECT last_name, city FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id; 
68). Wyswietl miasto i kraj, w ktorym pracuja osoby.
SELECT city, country_name FROM locations l JOIN countries c
ON l.country_id = c.country_id;
69). Wyswietl nazwisko i nazwe kraju, w ktorym pracuje pracownik.
SELECT last_name, country_name FROM employees e 
JOIN departments d ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id 
JOIN countries c ON l.country_id = c.country_id; 
70). Wyswietl osoby zarabiajace powyzej sredniej.
SELECT first_name, last_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
71). Wyswietl osoby zarabiajace najmniej (osoba o najnizszej pensji). 
SELECT first_name, last_name, salary FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);
72). Wyswietl nazwisko, pensje i maksymalna pensje dla wszystkich pracownikow. 
SELECT last_name, salary, (SELECT MAX(salary) FROM employees) FROM employees;
73). Wyswietl pensje netto, pensje brutto. Uzyj podzapytania w sekcji FROM.
SELECT salary AS "pensja netto", (salary * 1.2) AS "pensja brutto" FROM employees;
74). Wyswietl osobę zarabiajaca najwiecej. 
SELECT first_name, last_name FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
75). Wyswietl osoby, ktore sa przelozonymi innych osob (Wartosc ich employee_id jest wpisana w kolumnie manager_id). 
SELECT first_name, last_name FROM employees
WHERE employee_id IN (SELECT manager_id FROM employees);
76). Wyswietl osoby, ktore nie posiadaja podwładnych.
SELECT first_name, last_name FROM employees
WHERE employee_id NOT IN (SELECT manager_id FROM employees WHERE manager_id IS NOT NULL);
78). Wyswietl osoby zarabiajce ponizej sredniej
SELECT first_name, last_name, salary, ROUND((SELECT AVG(salary) FROM employees),2) AS srednia_zarobkow FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);
79). Wyswietl osoby zarabiajace powyzej 200% sredniej.
SELECT first_name, last_name, salary, ROUND((SELECt AVG(salary) FROM employees),2) AS srednia_zarobkow FROM employees
WHERE salary > (SELECt AVG(salary) FROM employees)*2;
80).Wyswietl tylko najdluzej pracujaca osobe.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date = (SELECT MIN(hire_date) FROM employees);















