1)	Создать таблицу employees: id serial primary key, employee_name Varchar(50) not null.
create table employees (
id serial primary key,
employee_name Varchar(50) not null);
* * *
2) Создать таблицу salary: id Serial primary key, monthly_salary Int not null.
create table salary (
id Serial primary key,
monthly_salary Int not null);
* * *
3) Создать таблицу employee_salary: id Serial primary key, employee_id Int not null unique, salary_id Int not null.
create table employee_salary (
id Serial primary key,
employee_id Int not null unique,
salary_id Int not null);
* * *
4)	Создать таблицу roles: id Serial primary key, role_name int not null unique.
create table roles (
id Serial primary key,
role_name int not null unique);
* * *
5) Поменять тип столба role_name с int на varchar(30).
alter table roles alter column role_name type varchar(30);
* * *
6) Создать таблицу roles_employee: id Serial primary key, employee_id Int not null unique (внешний ключ для таблицы employees, поле id), role_id Int not null (внешний ключ для таблицы roles, поле id).
create table roles_employee (
id Serial primary key,
employee_id Int not null unique,
role_id Int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id));
* * *
7) Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Mr. One'),
       ('Mr. Two'),
       ('Mr. Three'),
       ('Mr. Four'),
       ('Mr. Five'),
       ('Mr. Six'),
       ('Mr. Seven'),
       ('Mr. Eight'),
       ('Mr. Nine'),
       ('Mr. Ten'),
       ('Mrs. Eleven'),
       ('Mrs. Twelve'),
       ('Mrs. Thirteen'),
       ('Mrs. Fourteen'),
       ('Mrs. Fifteen'),
       ('Mrs. Sixteen'),
       ('Mrs. Seventeen'),
       ('Mrs. Eighteen'),
       ('Mrs. Nineteen'),
       ('Mrs. Twenty'),
       ('Mr. Twenty One'),
       ('Mr. Twenty Two'),
       ('Mr. Twenty Three'),
       ('Mr. Twenty Four'),
       ('Mr. Twenty Five'),
       ('Mr. Twenty Six'),
       ('Mr. Twenty Seven'),
       ('Mr. Twenty Eight'),
       ('Mr. Twenty Nine'),
       ('Mr. Thirty'),
       ('Mrs. Thirty One'),
       ('Mrs. Thirty Two'),
       ('Mrs. Thirty Three'),
       ('Mrs. Thirty Four'),
       ('Mrs. Thirty Five'),
       ('Mrs. Thirty Six'),
       ('Mrs. Thirty Seven'),
       ('Mrs. Thirty Eight'),
       ('Mrs. Thirty Nine'),
       ('Mrs. Fourty'),
       ('Mr. Fourty One'),
       ('Mr. Fourty Two'),
       ('Mr. Fourty Three'),
       ('Mr. Fourty Four'),
       ('Mr. Fourty Five'),
       ('Mr. Fourty Six'),
       ('Mr. Fourty Seven'),
       ('Mr. Fourty Eight'),
       ('Mr. Fourty Nine'),
       ('Mr. Fifty'),
       ('Mrs. Fifty One'),
       ('Mrs. Fifty Two'),
       ('Mrs. Fifty Three'),
       ('Mrs. Fifty Four'),
       ('Mrs. Fifty Five'),
       ('Mrs. Fifty Six'),
       ('Mrs. Fifty Seven'),
       ('Mrs. Fifty Eight'),
       ('Mrs. Fifty Nine'),
       ('Mrs. Sixty'),
       ('Mr. Sixty One'),
       ('Mr. Sixty Two'),
       ('Mr. Sixty Three'),
       ('Mr. Sixty Four'),
       ('Mr. Sixty Five'),
       ('Mr. Sixty Six'),
       ('Mr. Sixty Seven'),
       ('Mr. Sixty Eight'),
       ('Mr. Sixty Nine'),
       ('Mr. Seventy');
* * *
8) Наполнить таблицу salary строками: 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500.
insert into salary (monthly_salary)
values (1000), (1100), (1200), (1300), (1400), (1500), (1600), (1700), (1800), (1900), (2000), (2100), (2200), (2300), (2400), (2500);
* * *
9) Наполнить таблицу roles 20 строками.
insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
* * *
10) Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id.
insert into employee_salary (employee_id, salary_id)
values (71,	1),
       (72,	2),
       (73,	3),
       (74,	4),
       (75,	5),
       (76,	6),
       (77,	7),
       (78,	8),
       (79,	9),
       (80,	10),
       (1,	11),
       (2,	12),
       (3,	13),
       (4,	14),
       (5,	15),
       (6,	16),
       (7,	1),
       (8,	2),
       (9,	3),
       (10,	4),
       (11,	5),
       (12,	6),
       (13,	7),
       (14,	8),
       (15,	9),
       (16,	10),
       (17,	11),
       (18,	12),
       (19,	13),
       (20,	14),
       (21,	15),
       (22,	16),
       (23,	1),
       (24,	2),
       (25,	3),
       (26,	4),
       (27,	5),
       (28,	6),
       (29,	7),
       (30,	8);
* * *
11)	Наполнить таблицу roles_employee 40 строками.
insert into roles_employee (employee_id, role_id)
values (1,	1),
       (2,	2),
       (3,	3),
       (4,	4),
       (5,	5),
       (6,	6),
       (7,	7),
       (8,	8),
       (9,	9),
       (10,	10),
       (11,	11),
       (12,	12),
       (13,	13),
       (14,	14),
       (15,	15),
       (16,	16),
       (17,	17),
       (18,	18),
       (19,	19),
       (20,	20),
       (21,	1),
       (22,	2),
       (23,	3),
       (24,	4),
       (25,	5),
       (26,	6),
       (27,	7),
       (28,	8),
       (29,	9),
       (30,	10),
       (31,	11),
       (32,	12),
       (33,	13),
       (34,	14),
       (35,	15),
       (36,	16),
       (37,	17),
       (38,	18),
       (39,	19),
       (40,	20);
* * *
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;
      
