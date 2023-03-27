--Условия домашки
--Задание 1
--Создайте таблицу city с колонками city_id и city_name.

skypro=# CREATE TABLE city(
skypro(# city_id BIGSERIAL NOT NULL PRIMARY KEY,
skypro(# city_name VARCHAR(30) NOT NULL);


--Добавьте в таблицу employee колонку city_id.
skypro=# ALTER TABLE employee
skypro-# ADD city_id INT;

--Задача для самостоятельного решения: найдите, как добавлять колонки в существующую таблицу.
--
--Назначьте эту колонку внешним ключом. Свяжите таблицу employee с таблицей city.
skypro=# ALTER TABLE employee
skypro-# ADD FOREIGN KEY (city_id) REFERENCES city(city_id);


--Заполните таблицу city и назначьте работникам соответствующие города.
skypro=# INSERT INTO city(city_name)
skypro-# values ('Saratov'),('Omsk');
skypro=# INSERT INTO city(city_name)
skypro-# values ('Moskov'),('Perm');

skypro=# UPDATE employee SET city_id=1 WHERE id=2;
UPDATE 1
skypro=# UPDATE employee SET city_id=2 WHERE id=3;
UPDATE 1
skypro=# UPDATE employee SET city_id=2 WHERE id=7;
UPDATE 1
skypro=# UPDATE employee SET city_id=3 WHERE id=8;
UPDATE 1
skypro=# UPDATE employee SET city_id=4 WHERE id=9;
UPDATE 1

