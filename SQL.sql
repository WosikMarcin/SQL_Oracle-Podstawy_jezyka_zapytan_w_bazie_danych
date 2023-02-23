Do pracy z SQL w bazie danych Oracle uzywam Oracle SQL Developer - schemat HR ( wykonaj na 2 sposoby ).

1). Odczytaj wszystkie kolumny z schematu HR z tabeli employees.

SELECT * FROM employees;

SELECT * FROM hr.employees;

2). Odczytaj first_name, last_name i salary z tabeli employees;

SELECT first_name, last_name, salary FROM employees;

3). Nadaj alias imie dla first_name i pensja pracownika dla salary, odczytaj first_name i salary z employees ( wykonaj na 4 sposoby ).

SELECT first_name AS imie, salary AS pensja_pracownika FROM employees;

SELECT first_name AS "imie", salary AS "pensja_pracownika" FROM employees;

SELECT first_name imie, salary pensja_pracownika FROM employees;

SELECT first_name "imie", salary "pensja_pracownika" FROM employees;

4). Nadaj alias pracownicy dla tabeli employees, odczytaj first_name, last_name z employees ( wykonaj na 2 sposoby ).

SELECT pracownicy.first_name, pracownicy.last_name FROM employees pracownicy;

SELECT first_name, last_name FROM employees pracownicy;

5). Odczytaj first_name, salary z employees, posortuj rosnaco ( po salary ) ( wykonaj na 2 sposoby ).

SELECT first_name, salary FROM employees  
ORDER BY salary ASC;

SELECT first_name, salary FROM employees  
ORDER BY salary;

6). Odczytaj first_name, salary z employees, posortuj malejaco ( po salary ).

SELECT first_name, salary FROM employees 
ORDER BY salary DESC;

7). Odczytaj first_name, last_name, salary z employees posortuj rosnaco po last_name, rosnaco po salary ( wykonaj na 2 sposoby ).

SELECT first_name, last_name, salary FROM employees 
ORDER BY last_name ASC, salary ASC;

SELECT first_name, last_name, salary FROM employees 
ORDER BY last_name , salary;

8). Odczytaj najlepiej zarabiajaca osobê z employees.

SELECT first_name, last_name, salary FROM employees
ORDER BY salary DESC;

9). Odczytaj najgorzej zarabiajaca osobe z employees ( wykonaj na 2 sposoby ).

SELECT first_name, last_name, salary FROM employees
ORDER BY salary ASC;

SELECT first_name, last_name, salary FROM employees
ORDER BY salary;

10). Odczytaj najd³u¿ej zatrudniona osobe ( wykonaj na 2 sposoby ).

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

13). Odczytaj osobe zarabiajaca 12 tys. z employees. ( wykonaj na 3 sposoby )

SELECT first_name, last_name, salary FROM employees
WHERE salary = 12000;

SELECT first_name, last_name, salary FROM employees
WHERE salary IN (12000);

SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 12000 AND 12000;

14). Odczytaj osobe o nazwisku King. ( wykonaj na 2 sposoby )

SELECT first_name, last_name FROM employees
WHERE last_name  = 'King';

SELECT first_name, last_name FROM employees
WHERE last_name IN ('King');

15). Odczytaj osoby, które zarabiaja pomiedzy 9 tys. a 12 tys. (wlacznie). ( wykonaj na 3 sposoby )  

SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 9000 AND 12000;

SELECT first_name, last_name, salary FROM employees
WHERE salary >= 9000 AND salary <= 12000;

SELECT first_name, last_name, salary FROM employees
WHERE NOT (salary < 9000 OR salary > 12000); 

16). Odczytaj osoby zarabiajace 9 tys. lub 12 tys. lub 24 tys. ( wykonaj na 2 sposoby )

SELECT first_name, last_name, salary FROM employees
WHERE salary = 9000 OR salary = 12000 OR salary = 24000;

SELECT first_name, last_name, salary FROM employees
WHERE salary IN (9000,12000,24000);

17). Odczytaj wszystkie osoby oprocz tych zarabiajacych pomiedzy 9 tys. a 12 tys. (wlacznie) ( wykonaj na 3 sposoby )

SELECT first_name, last_name, salary FROM employees
WHERE salary NOT BETWEEN 9000 AND 12000;

SELECT first_name, last_name, salary FROM employees
WHERE salary < 9000 OR salary > 12000;

SELECT first_name, last_name, salary FROM employees
WHERE NOT (salary >= 9000 AND salary <= 12000);

18). Odczytaj osoby oprocz tych zarabiajacych 9 tys. lub 12 tys. lub 24 tys. ( wykonaj na 4 sposoby )

SELECT first_name, last_name, salary FROM employees
WHERE salary NOT IN (9000,12000,24000);

SELECT first_name, last_name, salary FROM employees
WHERE salary <> 9000 AND salary <> 12000 AND salary <> 24000;

SELECT first_name, last_name, salary FROM employees
WHERE salary != 9000 AND salary != 12000 AND salary != 24000;

SELECT first_name, last_name, salary FROM employees
WHERE NOT (salary = 9000 OR salary = 12000 OR salary = 24000);

19). Odczytaj osoby zarabiajace pomiedzy 5 tys. a 12 tys. (wlacznie). ( wykonaj na 3 sposoby )

SELECT first_name, last_name, salary FROM employees
WHERE salary BETWEEN 5000 AND 12000;

SELECT first_name, last_name, salary FROM employees
WHERE salary >= 5000 AND salary <= 12000;

SELECT first_name, last_name, salary FROM employees
WHERE NOT (salary < 5000 OR salary > 12000);

20). Odczytaj osoby o nazwiskach King, Fripp, Lee. ( wykonaj na 4 sposoby )

SELECT first_name, last_name FROM employees
WHERE last_name = 'King' OR last_name = 'Fripp' OR last_name = 'Lee';

SELECT first_name, last_name FROM employees
WHERE last_name IN ('King','Fripp','Lee');

SELECT first_name, last_name FROM employees
WHERE NOT (last_name <> 'King' AND last_name <> 'Fripp' AND last_name <> 'Lee');

SELECT first_name, last_name FROM employees
WHERE NOT (last_name != 'King' AND last_name != 'Fripp' AND last_name != 'Lee');

21). Odczytaj osoby o nazwisku King lub Fripp zarabiajace wiecej niz 14 tys.

SELECT first_name, last_name, salary FROM employees
WHERE last_name IN ('King','Fripp') AND salary > 14000;

SELECT first_name, last_name, salary FROM employees
WHERE (last_name = 'King' OR last_name = 'Fripp') AND salary > 14000; 

22). Odczytaj osoby z dzialow o identyfikatorach (department_id) innych niz 20,50,80. ( wykonaj na 4 sposoby )

SELECT first_name, last_name, department_id FROM employees
WHERE department_id NOT IN (20,50,80);

SELECT first_name, last_name, department_id FROM employees
WHERE department_id <> 20 AND department_id <> 50 AND department_id <> 80;

SELECT first_name, last_name, department_id FROM employees
WHERE department_id != 20 AND department_id != 50 AND department_id != 80;

SELECT first_name, last_name, department_id FROM employees
WHERE NOT (department_id = 20 OR department_id = 50 OR department_id = 80);

23). Odczytaj osoby pracujace na stanowiskach (job_id) SH_CLERK i zarabiajace wiecej niz
3 tys. ( wykonaj na 4 sposoby )

SELECT first_name, last_name, salary, job_id FROM employees
WHERE job_id = 'SH_CLERK' AND salary > 3000; 

SELECT first_name, last_name, salary, job_id FROM employees
WHERE job_id IN ('SH_CLERK') AND salary > 3000;

SELECT first_name, last_name, job_id, salary FROM employees
WHERE NOT job_id <> 'SH_CLERK' AND NOT salary <= 3000;

SELECT first_name, last_name, job_id, salary FROM employees
WHERE NOT job_id != 'SH_CLERK' AND NOT salary <= 3000;

24). Odczytaj osoby o pensji innej ni¿ 250,7500,10000 pracujace w dzialach 10,20,80.

SELECT first_name, last_name, salary, department_id FROM employees
WHERE salary NOT IN (250,7500,10000) AND department_id IN (10,20,80);

25). Odczytaj osoby o nazwiskach zaczynajacych sie na litere K.

SELECT first_name, last_name, salary FROM employees
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

SELECT COUNT(*) FROM employees;

33). Odczytaj liczbe wszystkich krajow.

SELECT COUNT(*) FROM countries; 

34). Odczytaj liczbe osob o imieniach kobiet.

SELECT COUNT(*) FROM employees
WHERE first_name LIKE '%a';

35). Odczytaj liczbe wszystkich pracownikow, employee_id, manager_id, commision_pct.

SELECT COUNT(*), COUNT(employee_id), COUNT(manager_id), COUNT(commission_pct) FROM employees; 

36). Odczytaj job_id bez powtarzania (unikatowe dane).

SELECT DISTINCT(job_id) FROM employees;

37). Odczytaj last_name, commission_pct, zastap (null)-"0";

SELECT last_name, commission_pct, NVL(commission_pct,0) FROM employees;

38). Odczytaj srednia(pomijajac NULL za pomoca ulamka, srednia uwzgledniajac NULL
zastapione przez zero) dla commission_pct.

SELECT SUM(commission_pct)/COUNT(commission_pct), (SUM(NVL(commission_pct,0)))/COUNT(NVL(commission_pct,0)) FROM employees;

39). Odczytaj nazwisko pierwsze wg alfabetu i ostatnie wg alfabetu.

SELECT MIN(last_name), MAX(last_name) FROM employees;

40). Odczytaj tylko osobe najkrocej zatrudniona i najdluzej zatrudniona.

SELECT MAX(hire_date), MIN(hire_date) FROM employees;

41). Odczytaj minimalna i maksymalna wyplate dla wszystkich osob.

SELECT MIN(salary),MAX(salary) FROM employees;

42). Odczytaj minimalna i maksymalna wyplate dla tych, ktorzy maja okreslone commission_pct.

SELECT MIN(salary), MAX(salary) FROM employees
WHERE commission_pct IS NOT NULL;

43). Odczytaj srednia pensje dla osob pracujacych na stanowisku IT_PROG.

SELECT AVG(salary) FROM employees
WHERE job_id = 'IT_PROG'; 

44). Sprawdz kogo jest wiecej i kto srednio lepiej zarabia kobiety czy mezczyzni.

SELECT 'Kobiety' AS Plec, COUNT(first_name), AVG(salary) FROM employees
WHERE first_name LIKE '%a'
UNION ALL
SELECT 'Mezczyzni' AS Plec, COUNT(first_name), AVG(salary) FROM employees
WHERE first_name NOT LIKE '%a';

45). Nadaj alias praca dla tabeli employees, wyswietl pracownikow, ktorzy maja wynagrodzenie 
wieksze niz 10000, posortuj malejaco.

SELECT first_name, last_name, salary FROM employees praca
WHERE salary > 10000
ORDER BY salary DESC;

SELECT praca.first_name, praca.last_name, praca.salary FROM employees praca
WHERE salary > 10000
ORDER BY salary DESC;

46). Odczytaj 5 najlepiej zarabijacyh osob.

SELECT first_name, last_name, salary FROM employees
ORDER BY salary DESC;

SELECT first_name, last_name, salary FROM (SELECT * FROM employees ORDER BY salary DESC)
WHERE ROWNUM <= 5;

47). Odczytaj liczbe pracownikow na kazdym stanowisku.

SELECT job_id, COUNT(job_id) FROM employees
GROUP BY job_id;

48). Odczytaj ile osob jest w podziale na stanowisko i dzial, posortuj po department_id malejaca, job_id malejaca.

SELECT department_id, COUNT(department_id), job_id, COUNT(job_id) FROM employees
GROUP BY job_id, department_id
ORDER BY department_id, job_id;

49). Odczytaj osoby na kazdym stanowisku, tylko te stanowiska gdzie pracuje mniej niz 3 osoby.

SELECT job_id FROM employees
GROUP BY job_id
HAVING COUNT(job_id) < 3;

50).Wyświetl na jakim stanowisku najbardziej opłaca sie pracować pod względem zarobków
(gdzie średnio zarabia się nawięcej)

SELECT job_id, AVG(salary) FROM employees
GROUP BY job_id
ORDER BY AVG(salary) DESC;

SELECT job_id, SREDNIE_WYNAGRODZENIE FROM (SELECT job_id, AVG(salary) AS "SREDNIE_WYNAGRODZENIE" FROM employees GROUP BY job_id ORDER BY AVG(salary) DESC)
WHERE ROWNUM = 1;

SELECT job_id, "SREDNIE WYNAGRODZENIE" FROM (SELECT job_id, AVG(salary) AS "SREDNIE WYNAGRODZENIE" FROM employees GROUP BY job_id ORDER BY AVG(salary) DESC)
WHERE ROWNUM = 1;

51).Wyświetl na jakim stanowisku jest najwięcej osób zarabiających powyżej 8 tys.

SELECT job_id, COUNT(job_id) AS ilosc FROM employees
WHERE salary > 8000
GROUP BY job_id
ORDER BY ilosc DESC;

SELECT job_id, ilosc FROM (SELECT job_id, COUNT(job_id) AS ilosc FROM employees WHERE salary > 8000 GROUP BY job_id ORDER BY ilosc DESC) 
WHERE ROWNUM = 1;

52).Wyświetl różnicę pomiędzy maksymalną a minimalną wypłata dla każdego stanowsika. 
Na jakim jest nawyższa ?   

SELECT job_id, MAX(salary), MIN(salary), MAX(salary) - MIN(salary) AS roznica FROM employees
GROUP BY job_id
ORDER BY roznica DESC;

SELECT job_id, MAX(salary), MIN(salary), MAX(salary)-MIN(salary) AS roznica FROM employees
GROUP BY job_id
ORDER BY 2 DESC;

SELECT job_id, MAX(salary), MIN(salary), MAX(salary)-MIN(salary) AS "roznica" FROM employees
GROUP BY job_id
ORDER BY "roznica" DESC;

SELECT * FROM (SELECT job_id, MAX(salary), MIN(salary), MAX(salary)-MIN(salary) AS roznica FROM employees GROUP BY job_id ORDER BY roznica DESC)
WHERE ROWNUM = 1;

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

SELECT * FROM employees e 
JOIN departments d ON e.department_id = d.department_id;

57). Polacz tabele employees i departments z uzyciem LEFT JOIN, nadaj alias "e" dla employees, "d" dla departments.

SELECT * FROM employees e 
LEFT JOIN departments d ON e.department_id = d.department_id;

58). Polacz tabele employees i departments z uzyciem FULL JOIN, nadaj alias "e" dla employees, "d" dla departments.

SELECT * FROM employees e 
FULL JOIN departments d ON e.department_id = d.department_id;

59). Polacz tabele employees i departments z uzyciem RIGHT JOIN, nadaj alias "e" dla employees, "d" dla departments.

SELECT * FROM employees e 
RIGHT JOIN departments d ON e.department_id = d.department_id;

60). Polacz tabele employees, departments i locations z uzyciem JOIN, odczytaj last_name, department_name i city, nadaj alias "e" 
dla employees "d" dla departments "l" dla locations.

SELECT e.last_name, d.department_name, l.city FROM employees e 
JOIN departments d ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id;

61).Zakladajac, ze kolumna "salary" to pensja miesieczna wyswietl imie, nazwisko i stawke godzinowa.

SELECT first_name, last_name, salary, salary/160 AS stawka_godzinowa FROM employees;

62).W tabeli "JOBS" znajdz kody stanowisk (job_title) majacych "Manager" w nazwie.

SELECT job_title FROM jobs
WHERE job_title LIKE '%Manager%';

63). Wyswietl osoby pracujace na stanowiskach (job_title) o kodach znalezionych w punkcie 62.

SELECT first_name, last_name, job_title FROM employees e
RIGHT JOIN jobs j ON e.job_id = j.job_id
WHERE job_title LIKE '%Manager%';

64). Policz ile bezposrednio podwladnych ma kazdy Manager (pogrupuj po kolumnie manager_id).

SELECT manager_id, COUNT(manager_id) FROM employees
GROUP BY manager_id;

65). Wyswietl nazwisko pracownika i nazwe stanowiska (job_title z tabeli jobs) na którym pracuje (połącz tabele employees i jobs).

SELECT last_name, job_title FROM employees e
LEFT JOIN jobs j ON e.job_id = j.job_id;

66). Wyswietl tylko te osoby, ktore nie zarobia wiecej na swoim stanowisku (ich pensja = max dla stanowiska)

SELECT first_name, last_name, salary, max_salary FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
WHERE salary = max_salary;

67) Wyswietl nazwisko i miasto, w ktorym pracuja osoby.

SELECT last_name, city FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;

68). Wyswietl miasto (z tabeli locations) i kraj ( z tabeli countries ), w ktorym pracuja osoby.

SELECT city, country_name FROM locations l
LEFT JOIN countries c ON l.country_id = c.country_id;

69). Wyswietl nazwisko i nazwe kraju, w ktorym pracuje pracownik.

SELECT last_name, country_name FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
LEFT JOIN locations l ON d.location_id = l.location_id
LEFT JOIN countries c ON l.country_id = c.country_id; 

70). Wyswietl osoby zarabiajace powyzej sredniej.

SELECT first_name, last_name, salary, (SELECT AVG(salary) FROM employees) FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

71). Wyswietl osoby zarabiajace najmniej (osoba o najnizszej pensji). 
SELECT first_name, last_name, salary FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);
72). Wyswietl nazwisko, pensje i maksymalna pensje dla wszystkich pracownikow. 
SELECT last_name, salary, (SELECT MAX(salary) FROM employees) FROM employees;
73). Wyswietl pensje netto, pensje brutto.
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
81). Wyswietl jednoczesnie najlepiej i najgorzej zarabiajce osoby.
SELECT first_name, last_name, salary FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees)
UNION ALL
SELECT first_name, last_name, salary FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

SELECT first_name, last_name, salary FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees) OR
salary = (SELECT MIN(salary) FROM employees);
82). Znajdz najwyzsza pensje kobiety.
SELECT MAX(salary) FROM employees 
WHERE first_name LIKE '%a';

SELECT first_name, last_name, salary FROM (SELECT * FROM employees WHERE first_name LIKE '%a')
WHERE ROWNUM =1
ORDER BY salary DESC;
84).Wyswietl osoby pracujace na stanowiskach "ACCOUNTANT".
SELECT first_name, last_name, job_title FROM employees e JOIN jobs j
ON e.job_id = j.job_id WHERE job_title = 'Accountant';
85).Wyswietl osoby pracujace w Londynie.
SELECT first_name, last_name, city FROM employees e 
JOIN departments d ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id
WHERE l.city  = 'London';
88).Wyswietl imie, pensja i maksimum zarobkow dla wszystkich.
SELECT first_name, salary, (SELECT MAX(salary) FROM employees) FROM employees;
89).Wyswietl imie, pensja, stanowisko i maksimum zarobkow dla wszystkich.
SELECT first_name, salary, job_title, (SELECT MAX(salary) FROM employees) FROM employees e
JOIN jobs j ON e.job_id = j.job_id;
91). Liczbę 12345.6789
a). zaokraglij (zero miejsc po przecinku)
b). zaokraglij do dwoch miejsc po przecinku
c). zaokraglij do dwoch miejsc przed przecinkiem
d). utnij liczby po przecinku, wyswietl tylko liczbe do przecinka
e). utnij do dwoch miejsc po przecinku
f). utnij do dwoch miejsc przed przecinkiem
g). zaokraglij w gore
h). zaokraglij w dol

a). SELECT ROUND(12345.6789) FROM DUAL;
    SELECT ROUND(12345.6789,0) FROM DUAL;
b). SELECT ROUND(12345.6789,2) FROM DUAL;
c). SELECT ROUND(12345.6789,-2) FROM DUAL;
d). SELECT TRUNC(12345.6789) FROM DUAL; 
    SELECT TRUNC(12345.6789,0) FROM DUAL; 
e). SELECT TRUNC(12345.6789,2) FROM DUAL;
f). SELECT TRUNC(12345.6789,-2) FROM DUAL;
g). SELECT CEIL(12345.6789) FROM DUAL;
h). SELECT FLOOR(12345.6789) FROM DUAL;

92). Wyswietl min, max i srednia pensje dla wszystkich praconikow - zaokraglij do dwoch miejsc po przecinku.

SELECT MIN(salary), MAX(salary), ROUND(AVG(salary),2) FROM employees;

93).Wyswietl "ala ma kota" z wszystkich duzych liter, z wszystkich malych, pierwsza litera slowa wielka a reszta mała.

SELECT UPPER('ala ma kota'), LOWER('ala ma kota'), INITCAP('ala ma kota') FROM DUAL;

SELECT UPPER(k1), LOWER(k1), INITCAP(k1) FROM (SELECT ('ala ma kota') AS k1 FROM DUAL); 

94).Wyswietl osoby o nazwisku King, wszystkie małe litery.

SELECT first_name, LOWER(last_name) FROM employees
WHERE last_name = 'King';

95). Wyswietl osoby o nazwisku King, wszystkie duże litery.

SELECT first_name, UPPER(last_name) FROM employees
WHERE last_name = 'King';

96). Dla wyrazenia ' ala ma kota ' usun białe znaki z obu stron, z lewej strony, z prawej strony.

SELECT ' ala ma kota ', TRIM(' ala ma kota '), LTRIM(' ala ma kota '), RTRIM( ' ala ma kota ') FROM DUAL;

SELECT k1, TRIM(k1), LTRIM(k1), RTRIM(k1) FROM (SELECT ' ala ma kota ' AS k1 FROM DUAL);

97). Wyswietl napis w formacie job_title (min salary :max salary).

SELECT job_title|| ' ( ' || min_salary || ' : ' || max_salary || ' ) ' FROM jobs;

98). Wyswietl napisz w formacie job_title : last_name, np.President : King

SELECT job_title || ' : ' || last_name FROM employees e 
JOIN jobs j ON e.job_id = j.job_id;

99). Z napisu "Ala ma kota" wytnij "kot". (zaczynajac od poczatku i od konca).

SELECT SUBSTR('ala ma kota',8,3), SUBSTR('ala ma kota',-4,3) FROM DUAL;

SELECT SUBSTR(k1,8,3), SUBSTR(k1,-4,3) FROM (SELECT 'ala ma kota' AS k1 FROM DUAL);

100). Wyswietl imie, nazwisko i inicjaly w formacie P.S.

SELECT first_name, last_name, SUBSTR(first_name,1,1) || '.' || SUBSTR(last_name,1,1) || '.' as inicjaly FROM employees;

101).Wyswietl first_name, dlugosc first_name i pozycje "a" w first_name.

SELECT first_name, LENGTH(first_name), INSTR(first_name,'a') FROM employees;

102). Utworz widok "pracownicy". Polacz first_name z last_name i nadaj alias pracownik.
Wyswietl dane w formacie pracownik, miejsce spacji, imie, nazwisko.

CREATE VIEW pracownicy AS SELECT first_name || ' ' || last_name AS pracownik FROM employees;

SELECT pracownik, INSTR(pracownik,' ') AS Miejsce_spacji, SUBSTR(pracownik,1,INSTR(pracownik,' ')-1) AS imie, 
SUBSTR(pracownik,INSTR(pracownik,' ')+1,length(pracownik)) AS Nazwisko FROM pracownicy;

103). W "Ala ma Kota" zamień: "Ala" na "Tomek", "Kot" na "Ps", "a" na "*".

SELECT REPLACE('Ala ma Kota','Ala','Tomek'), REPLACE('Ala ma Kota','Kot','Ps'), REPLACE('Ala ma Kota','a','*') FROM DUAL;

SELECT k1,REPLACE(k1,'Ala','Tomek'), REPLACE(k1,'Kot','Ps'), REPLACE(k1,'a','*') FROM (SELECT 'Ala ma Kota' AS k1 FROM DUAL);

104). Wyswietl dzisiejsza datę.

SELECT SYSDATE FROM DUAL;

105).Wyswietl dzisiejsza date w formacie rok-miesiac-dzien, 
godzine w formacie godzina:minuta:sekunda, ktory dzien tygodnia dzien miesiaca dzien roku(nazwa dnia krotka i pelna), ktory dzis miesiac.

SELECT to_char(SYSDATE,'yyyy-mm-dd'), to_char(SYSDATE,'hh24:mi:ss'), to_char(SYSDATE,'d dd ddd dy day month') FROM DUAL;

106).Wprowadz swoja date urodzenia. Policz ile masz lat.

SELECT to_char(SYSDATE,'yyyy')-2000 FROM DUAL;

108).Dla kazdego pracownika wyswietl nazwisko, date zatrudnienia i obliczony staz pracy latach.

SELECT last_name, hire_date, to_char(SYSDATE,'yyyy')- to_char(hire_date,'yyyy') AS staz FROM employees; 

110).Ile osob jest na kazdym stanowisku? Tylko te stanowiska, gdzie pracuje mniej niz 3 osoby.

SELECT COUNT(job_id), job_id FROM employees
GROUP BY job_id
HAVING COUNT(job_id) < 3;

113). Wyswietl first_name,przy kazdym first_name okresl czy to jest PAN czy PANI. Uzyj funkcji CASE.
Nadaj alias "plec" dla okreslenia czy to PAN czy PANI.

SELECT first_name,
CASE 
WHEN first_name LIKE '%a' OR first_name IN ('Ellen','Shelli','Elizabeth') THEN 'PANI'
ELSE 'PAN'
END AS plec
FROM employees;

114). Wyświetl Hello World

SELECT 'Hello World' FROM DUAL;

115). Odczytaj wszystkie kolumny z employees, posortuj malejąco po salary, uzyj numeru kolumny zamiast jej nazwy przy sortowaniu.

SELECT * FROM employees
ORDER BY 8 DESC;






































