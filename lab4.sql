--1. Заповнити таблиці вашої БД в режимі одиночного і групового доповнення.
insert into TypeTech values (1, 'typetech1');
insert all
    into TypeTech values (2, 'typetech2')
    into TypeTech values (3, 'typetech3')
    into TypeTech values (4, 'typetech4')
    into TypeTech values (5, 'typetech5')
	into TypeTech values (6, 'typetech6')
select * from dual;

select * from TypeTech;