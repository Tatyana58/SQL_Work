--Задание 4
--Создайте ряд запросов к созданной таблице.
--
--1.Получите имена и фамилии сотрудников, а также города, в которых они проживают.

skypro=# SELECT employee.last_name, employee.first_name, city.city_name
skypro-#  FROM employee INNER JOIN city
skypro-# ON employee.city_id=city.city_id;

--2.Получите города, а также имена и фамилии сотрудников, которые в них проживают.
skypro=# SELECT city.city_name,employee.last_name, employee.first_name
skypro-# FROM employee INNER JOIN city
skypro-# ON employee.city_id=city.city_id;

--  Если в городе никто из сотрудников не живет, то вместо имени должен стоять null.

skypro=# SELECT city.city_name,employee.last_name, employee.first_name
skypro-# FROM city LEFT JOIN employee
skypro-# ON city.city_id=employee.city_id;

--3.Получите имена всех сотрудников и названия всех городов. Если в городе никто из сотрудников не живет,
 -- то вместо имени должен стоять null. Аналогично, если города для какого-то из сотрудников нет в списке,
 -- должен быть получен null.
skypro=# SELECT city.city_name,employee.last_name, employee.first_name
skypro-# FROM city FULL JOIN employee
skypro-# ON city.city_id=employee.city_id;

--4.Получите таблицу, в которой каждому имени должен соответствовать каждый город.
skypro=# SELECT employee.last_name,city.city_name
skypro-# FROM employee LEFT JOIN city
skypro-# ON city.city_id=employee.city_id
skypro-# WHERE employee IS NOT NULL;

--5.Получите имена городов, в которых никто не живет.
skypro=# SELECT city.city_name,employee.last_name, employee.first_name
skypro-# FROM city LEFT JOIN employee
skypro-# ON city.city_id=employee.city_id
skypro-# WHERE employee IS NULL;