use mydbms;
create table member (
id long primary key auto_increment,
userid varchar(255),
name varchar(255)
);

create table res (
id long primary key auto_increment,
name varchar(255)
);

create table menu (
id long primary key auto_increment,
res_id long,
name varchar(255),
foreign key (res_id) references res(id)
);

create table bill (
id int auto_increment primary key,
bill_num int,
member_id long,
res_id long,
menu_id long,
quantity int
);

insert into bill (bill_num, member_id, res_id, menu_id, quantity)
values (11, 55, 66, 77, 1);
insert into bill (bill_num, member_id, res_id, menu_id, quantity)
values (11, 55, 66, 88, 2);

select * from bill;

commit;
use mydbms;
select now() from dual;
