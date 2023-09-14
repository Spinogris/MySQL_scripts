/*
SELECT
	*
FROM employees;         

SELECT
	*
FROM jobs;

SELECT
	first_name,
    last_name,
    salary
FROM employees
WHERE salary < 7000;

SELECT distinct
	department_id
FROM employees
WHERE salary < 7000;

SELECT
	first_name,
    last_name,
    salary
FROM employees
order by salary;

SELECT
	first_name,
    last_name,
    salary,
    department_id
FROM employees
order by department_id DESC,
salary;

SELECT
	country_name
FROM countries
order by country_name;

-- 0. Выбрать БД hr в качестве текущей           
use hr;
-- 1. Вывести сотрудников (имя, фамилия, зп), которые зарабатывают больше 7000 и работают в департаментах 90, 50, 80
SELECT 
    first_name, last_name, salary
FROM
    hr.employees
WHERE
    salary > 7000
        AND department_id IN (90 , 50, 80);

SELECT 
    *
FROM
    employees;
*/    
--    РАБОТА С БД
-- 1. Создать БД
create database Group_300523;



-- 2. Выбрать БД в качестве текущей

use Group_300523;

-- 3. Удалить БД
    
-- drop database Group_300523;
    
    
--    РАБОТА С Таблицами
-- 1. Создать таблицу
	/*							-- ТИПЫ ДАННЫХ
create table students ( 
	id integer, 				-- INTEGER (INT) - целое число
    first_name varchar (64), 	-- VARCHAR - строка с указанием макс длины
    last_name varchar (64), 	-- VARCHAR - строка с указанием макс длины
    avg_score numeric(4, 2),	-- NUMERIC / DECIMAL - дробное число
    gender char(1)				-- CHAR - строка с указанием фиксированной длины
);
*/
-- 1. Создать таблицу
-- 74.98
-- 6.73  

select * from students;

insert into students (id, first_name, last_name) values (1, 'Olga', 'Ivanova');
insert into students (id, first_name, last_name, avg_score, gender) values (2, 'Ivan', 'Petrov', 45.56, 'M'),
																			(3, 'Boris', 'Sidorov', 45.82, 'M'),
                                                                            (4, 'Irina' , 'Ushanova', 39.08, 'F'),
																			(5, 'Anna', 'Gribova', 61.14, 'F');

-- drop table students;			-- Удалить таблицу

delete from students.   -- Удалить строку
where id in (2,4);

delete from students;		-- Удалить все строки

set sql_safe_updates = 0; -- Отключить безопасный режим

select * from students;




