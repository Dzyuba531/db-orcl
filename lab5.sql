drop table Table1;
drop table Table2;

create table Table1
    as select * from TypeTech
        where id <= 4;
        
create table Table2
    as select * from TypeTech
        where id >= 2;

--1. �������� ����� �� ��������� �ᒺ������ (��� ����-���� ������� ���� ��).
select * from Table1
    union select * from Table2;
select * from Table1
    union all select * from Table2;

--2. �������� ����� �� ��������� �������� (��� ����-���� ������� ���� ��).
select * from Table1
    intersect select * from Table2;
	
--3. �������� ����� �� �������� ������ (��� ����-���� ������� ���� ��).
select * from Table1
    minus select * from Table2; 
--4. ���������� ����� �� ��������� ����������� ������� ���� ������� (��� ����-���� ������� ���� ��).
select * from Table1, Table2;