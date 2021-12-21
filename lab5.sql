drop table Table1;
drop table Table2;

create table Table1
    as select * from TypeTech
        where id <= 4;
        
create table Table2
    as select * from TypeTech
        where id >= 2;

--1. Створити запит на виконання об’єднання (для будь-яких таблиць вашої БД).
select * from Table1
    union select * from Table2;
select * from Table1
    union all select * from Table2;

--2. Створити запит на виконання перетину (для будь-яких таблиць вашої БД).
select * from Table1
    intersect select * from Table2;
	
--3. Виконати запит на побудову різниці (для будь-яких таблиць вашої БД).
select * from Table1
    minus select * from Table2; 
--4. Побудувати запит на виконання декартового добутку двох таблиць (для будь-яких таблиць вашої БД).
select * from Table1, Table2;