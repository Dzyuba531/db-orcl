
drop table Orders;
drop table TypeTech;
drop table Master;
drop table Client;

create table Client(
    id int primary key,
    name varchar(50),
    surname varchar(50),
    fathername varchar(50)
);

create table Master(
    id int primary key,
    experience int,
    name varchar(50),
    surname varchar(50),
    fathername varchar(50)
);

create table TypeTech(
    id int primary key,
    name varchar(50)
);

create table Orders(
    id int primary key,
    
    id_client int,
    constraint Order_Client foreign key (id_client) references Client(id),
    
    id_master int,
    constraint Order_Master foreign key (id_master) references Master(id),
    
    id_typetech int,
    constraint Order_TypeTech foreign key (id_typetech) references TypeTech(id),
    
    date1 date,
    date2 date,
    info varchar(255)
);