--1. �������� ����-���� ������ �� ��������� ���� ��.
alter table Orders drop constraint Order_Client;
  
 --2. �������� � ������ �������������� ���� � ���� � ������� ���� ��.
alter table Orders drop column id_client;
alter table Orders modify id_master int not null;

--3. ������ ���� � ���� � ������� ���� ��.
alter table Orders rename column date1 to date_start;


--4. ������ ���� � ���� ��������� ���������� �� ����-��� ������� ���� ��.
alter table Orders add constraint const_unq unique (id_typetech, date_start);
    
    
--5. ������ ��� ��������� �������� ��� ������ � ���� � ������� ���� ��. 
alter table Orders drop constraint Order_TypeTech;
alter table Orders
    add constraint Order_TypeTech foreign key (id_typetech) references TypeTech(id) on delete cascade;