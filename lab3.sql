--1. Вилучити будь-який зв’язок між таблицями вашої БД.
alter table Orders drop constraint Order_Client;
  
 --2. Вилучити і змінити характеристики поля у одній з таблиць вашої БД.
alter table Orders drop column id_client;
alter table Orders modify id_master int not null;

--3. Змінити поле у одній з таблиць вашої БД.
alter table Orders rename column date1 to date_start;


--4. Додати поле і нове обмеження унікальності до будь-якої таблиці вашої БД.
alter table Orders add constraint const_unq unique (id_typetech, date_start);
    
    
--5. Змінити тип обмеження цілісності для зв’язку у одній з таблиць вашої БД. 
alter table Orders drop constraint Order_TypeTech;
alter table Orders
    add constraint Order_TypeTech foreign key (id_typetech) references TypeTech(id) on delete cascade;