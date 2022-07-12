--Lab 01:
-- drop table

drop table client_mobile_no;
drop table advertisement;
drop table client;
drop table product;
drop table payment;

-- create table

create table client (
  user_id number(6) not null,
  user_name varchar(50),
  address varchar(100),
  primary key(user_id)
);

create table client_mobile_no (
  user_id number(6) not null,
  mobile varchar(20) not null,
  primary key(user_id, mobile),
  foreign key(user_id) references client(user_id) on delete cascade
);

create table product (
  product_id number(6) not null,
  expected_price number,
  condition varchar(100),
  product_name varchar(100),
  category varchar(60),
  used varchar(70),
  primary key(product_id)
);

create table payment (
  pay_id number(6) not null,
  payment_date date,
  primary key(pay_id)
);

create table advertisement (
  ad_no number(6) not null,
  current_date date,
  end_date date,
  user_id number,
  product_id number,
  pay_id number,
  primary key(ad_no),
  foreign key(user_id) references client(user_id) on delete cascade,
  foreign key(product_id) references product(product_id) on delete cascade,
  foreign key(pay_id) references payment(pay_id) on delete cascade
);

-- showing existing tables in database

select * from tab;

-- describing all table with their column

describe client;
describe client_mobile_no;
describe product;
describe payment;
describe advertisement;

-- insert values in tables

insert into client values (001, 'Mahin', 'Dhaka');
insert into client values (002, 'Iftee', 'Khulna');
insert into client values (003, 'Rupok', 'Dhaka');
insert into client values (004, 'Ratul', 'Khulna');
insert into client values (005, 'Nafiul', 'Dhaka');
insert into client values (006, 'Subah', 'Dhaka');
insert into client values (007, 'Oishy', 'Khulna');
insert into client values (008, 'Takiul', 'Dhaka');
insert into client values (009, 'Tanvir', 'Khulna');
insert into client values (010, 'Prothoma', 'Dhaka');
insert into client values (011, 'Sourov', 'Dhaka');
insert into client values (012, 'Saad', 'Khulna');
insert into client values (013, 'Sahid', 'Dhaka');
insert into client values (014, 'Faiyaz', 'Khulna');
insert into client values (015, 'Sifat', 'Dhaka');
insert into client values (016, 'Tanvir', 'Dhaka');
insert into client values (017, 'Rakib', 'Khulna');
insert into client values (018, 'Oman', 'Dhaka');
insert into client values (019, 'Sonjoy', 'Khulna');
insert into client values (020, 'Saadman', 'Dhaka');
insert into client values (021, 'Shoumya', 'Dhaka');
insert into client values (022, 'Subol', 'Khulna');
insert into client values (023, 'Shihab', 'Dhaka');
insert into client values (024, 'Abrar', 'Khulna');
insert into client values (025, 'Rakib', 'Dhaka');
insert into client values (026, 'Tushi', 'Dhaka');
insert into client values (027, 'Dev', 'Khulna');
insert into client values (028, 'Bokti', 'Dhaka');
insert into client values (029, 'Lira', 'Khulna');
insert into client values (030, 'Rana', 'Dhaka');

insert into client_mobile_no values (001, '01711111111');
insert into client_mobile_no values (002, '01711111112');
insert into client_mobile_no values (002, '01711111113');
insert into client_mobile_no values (003, '01711111114');
insert into client_mobile_no values (004, '01711111115');
insert into client_mobile_no values (004, '01711111116');
insert into client_mobile_no values (005, '01711111117');
insert into client_mobile_no values (006, '01711111118');
insert into client_mobile_no values (007, '01711111119');
insert into client_mobile_no values (008, '01711111110');
insert into client_mobile_no values (009, '01711111121');
insert into client_mobile_no values (010, '01711111122');
insert into client_mobile_no values (011, '01711111123');
insert into client_mobile_no values (012, '01711111124');
insert into client_mobile_no values (012, '01711111125');
insert into client_mobile_no values (013, '01711111126');
insert into client_mobile_no values (014, '01711111127');
insert into client_mobile_no values (014, '01711111128');
insert into client_mobile_no values (015, '01711111129');
insert into client_mobile_no values (016, '01711111120');
insert into client_mobile_no values (017, '01711111131');
insert into client_mobile_no values (018, '01711111132');
insert into client_mobile_no values (019, '01711111133');
insert into client_mobile_no values (020, '01711111134');
insert into client_mobile_no values (031, '01711111135');
insert into client_mobile_no values (032, '01711111136');

insert into product values (001, 5000, 'used', 'xiaomi', 'mobile', '1 month');
insert into product values (002, 10000, 'used', 'LG tv', 'home', '6 month');
insert into product values (003, 50000, 'used', 'canon 800D', 'accessories', '1 year');
insert into product values (004, 7000, 'used', 'iphone 6s', 'mobile', '2 year');
insert into product values (005, 13000, 'used', 'otobi dinning table', 'home', '1 year');
insert into product values (006, 15000, 'used', 'one plus 7T', 'mobile', '1 year');
insert into product values (007, 3000, 'used', 'redmi', 'mobile', '8 month');
insert into product values (008, 20000, 'used', 'LG Refrigetor', 'home', '11 month');
insert into product values (009, 5000, 'used', 'one plus 8T', 'mobile', '3 year');
insert into product values (010, 10000, 'used', 'iphone 7s', 'mobile', '2 year');
insert into product values (011, 13000, 'used', 'gaming chair 80D73H', 'accessories', '3 year');
insert into product values (012, 17000, 'used', 'poco phone', 'mobile', '3 month');

insert into payment values (001, sysdate);
insert into payment values (002, sysdate);
insert into payment values (003, sysdate);
insert into payment values (004, sysdate);
insert into payment values (005, sysdate);
insert into payment values (006, sysdate);
insert into payment values (007, sysdate);
insert into payment values (008, sysdate);
insert into payment values (009, sysdate);
insert into payment values (010, sysdate);
insert into payment values (011, sysdate);
insert into payment values (012, sysdate);
insert into payment values (013, sysdate);
insert into payment values (014, sysdate);
insert into payment values (015, sysdate);
insert into payment values (016, sysdate);
insert into payment values (017, sysdate);
insert into payment values (018, sysdate);

insert into advertisement values (001, sysdate, '29-oct-2022', 002, 001, 003);
insert into advertisement values (002, sysdate, '29-oct-2022', 001, 002, 001);
insert into advertisement values (003, sysdate, '29-oct-2022', 005, 003, 002);
insert into advertisement values (004, sysdate, '29-oct-2022', 004, 004, 004);
insert into advertisement values (005, sysdate, '29-oct-2022', 005, 004, 004);
insert into advertisement values (006, sysdate, '29-oct-2022', 006, 005, 005);
insert into advertisement values (007, sysdate, '29-oct-2022', 011, 007, 010);
insert into advertisement values (008, sysdate, '29-nov-2022', 007, 008, 011);
insert into advertisement values (009, sysdate, '29-oct-2022', 006, 009, 012);
insert into advertisement values (010, sysdate, '29-oct-2022', 014, 012, 008);
insert into advertisement values (011, sysdate, '29-oct-2022', 015, 011, 009);
insert into advertisement values (012, sysdate, '29-oct-2022', 016, 007, 007);

--Lab 02:
-- select all data from table

select user_id, user_name, address, mobile from client natural join client_mobile_no;
select * from product;
select * from payment;
select * from advertisement;

-- add a column to a table

alter table client add temp_column varchar(10);
describe client;

-- modify column datatype of a column

alter table client modify temp_column number(6);
describe client;

-- delete a column of a table

alter table client drop column temp_column;
describe client;

-- renaming a column of a table

alter table client rename column user_id to client_id;
describe client;

alter table client rename column client_id to user_id;
describe client;

-- updating a row in a table

update client set user_name='Abrar' where user_id=14;
select * from client;

-- deleting a row in a table

delete from client where user_id=11;
select * from client;

-- Lab 03:
-- calculated field
select (expected_price/2) as expected_price_divided_by_two from product; --giving the column a different name (from lab 4)

-- applying conditions
select prouduct_name from product where product_id=7;

-- range search
select user_name, address from client where user_id between 1 and 5;

select user_name, address from client where user_id not between 1 and 5;

-- range operators
select user_name, address from client where user_id>=1 and user_id<=5; --comparison search condition(from lab04)

select user_name, address from client where user_id>=1 or user_id<=5; --compound comparison search condition(from lab04)

-- set membership
select user_name, address from client where user_id in (1, 5);

select user_name, address from client where user_id not in (1, 5);

-- ordering by single column values
select user_name, address from client order by user_id; --asc

select user_name, address from client order by user_id desc; --desc

-- ordering by column values (with multiple columns)
select prouduct_name, category from product order by expected_price, product_id; --asc

select prouduct_name, category from product order by expected_price, product_id desc; --desc

-- use of distinct
select distinct (product_id) from advertisement;

-- Lab 04:

-- pattern matching

select user_name, address from client where address like '%Dha%'; -- Dha any where in address

select user_name, address from client where address like 'Dha%'; -- Dha at beggining

select user_name, address from client where address like '%na'; -- na at end

select user_name, address from client where address like '%___%'; -- minimum there character

select user_name, address from client where address like '%_ka'; -- minimum there character and end with ka

select user_name, address from client where address like '%Kh_'; -- minimum there character and start with Kh

-- aggregate functions:

select max(expected_price) from product;

select min(expected_price) from product;

select sum(expected_price) from product;

select count(expected_price) from product;

select count(*) from product; -- count including null value

select count(distinct(product_id)) from advertisement; -- count distint product id

select avg(expected_price) from product; -- avgerage without null consideration

select avg(nvl(expected_price, 0)) from product; -- replace null value with 0 and then average

select count(all expected_price) from product; -- count with considering null value

-- group by clause
select user_id, count(ad_no) from advertisement group by user_id;

select user_id, count(ad_no) from advertisement where user_id>5 group by user_id;

-- having clause
select user_id, count(ad_no) from advertisement group by user_id having user_id>5;

select user_id, count(ad_no) from advertisement group by user_id having count(user_id)>1;

-- Lab 05:

-- in
select user_id, user_name, address from client where user_name in ('Oman', 'Rakib', 'Abrar');

-- nested query
select prouduct_name, expected_price from product where product_id in (select product_id from advertisement where ad_no > 7);

-- set operations

-- union all operation
select product_id from product where product_id>0 and product_id<7
union all
select product_id from advertisement where ad_no>0 and ad_no<7;

-- union operation
select user_id, product_id from advertisement where user_id>0 and user_id<8
union
select user_id, user_id from client where user_id>0 and user_id<4;

-- intersect operation
select user_id from advertisement where user_id>0 and user_id<8
intersect
select user_id from client where user_id>0 and user_id<4;

-- minus operation
select user_id from advertisement where user_id>0 and user_id<8
minus
select user_id from client where user_id>0 and user_id<4;

-- Lab 06: (Joing multiple tables)

-- join
select p.prouduct_name, p.expected_price, p.condition, p.used, a.ad_no, a.end_date from product p join advertisement a on p.product_id=a.product_id;

select c.user_name, c.address, m.mobile from client c join client_mobile_no m on c.user_id=m.user_id;

-- natural join
select user_name, address, mobile from client natural join client_mobile_no;

-- cross join/cartesian product
select c.user_name, c.address, m.mobile from client c cross join client_mobile_no m;

-- inner join
select c.user_name, c.address, m.mobile from client c inner join client_mobile_no m on c.user_id=m.user_id;

-- outer join

-- left outer join
select c.user_name, c.address, m.mobile from client c left outer join client_mobile_no m on c.user_id=m.user_id;

-- right outer join
select c.user_name, c.address, m.mobile from client c right outer join client_mobile_no m on c.user_id=m.user_id;

-- full outer join
select c.user_name, c.address, m.mobile from client c full outer join client_mobile_no m on c.user_id=m.user_id;

-- self join
-- max expected price
select p.expected_price from product p 
minus
select p.expected_price from product p join product q on p.expected_price<q.expected_price;

-- Lab 07:
--this block will give discount on expected price of all product in product table
--	No discount if the price is less than 2500
-- 25% discount if the price is less than 4000
-- 40% discount if the price is less than 5000
-- For any other price, the discount is 50%

-- simple pl/sql (loop, if/else, variable)

set serveroutput on;
begin
dbms_output.put_line('Product table discount');
dbms_output.put_line('this block will give discount on expected price of all product in product table');
dbms_output.put_line('');
dbms_output.put_line('No discount if the price is less than 2500');
dbms_output.put_line('25% discount if the price is less than 4000');
dbms_output.put_line('40% discount if the price is less than 5000');
dbms_output.put_line('For any other price, the discount is 50%');
end;
/

set serveroutput on;

declare

-- product variable
p_id product.product_id%type;
p_name product.product_name%type;
full_price product.expected_price%type;
discount_price product.expected_price%type;
i integer;

begin
  for i in 1..12
  loop
    select product_id, product_name, expected_price into p_id, p_name, full_price
    from product
    where product_id like i;

    if full_price < 2500 then
      discount_price := full_price;
    elsif full_price >= 2500 and full_price < 4000 then
      discount_price := full_price - (full_price*0.25);
    elsif full_price >= 4000 and full_price < 5000 then
      discount_price := full_price - (full_price*0.4);
    else
      discount_price := full_price - (full_price*0.5);
    end if;

    dbms_output.put_line('Product id: ' || p_id || ' -> Product Name: ' || p_name || ' -> full price: '
    || full_price || ' -> Discount Price: ' || round(discount_price, 2));

  end LOOP;

exception
  when others then
    dbms_output.put_line(sqlerrm);

end;
/
show errors;

-- Lab: 08

-- creating cursor and cursortype variable in pl/sql
set serveroutput on;

declare
  cursor product_cursor is select product_id, product_name, expected_price from product;
  product_record product_cursor%rowtype;

begin
  open product_cursor;
  loop
    
    fetch product_cursor into product_record;
    exit when product_cursor%notfound;
    dbms_output.put_line('Product Id: ' || product_record.product_id || ' -> Product Name: ' || product_record.product_name || ' -> Expected price: ' || product_record.expected_price);

  end loop;
  close product_cursor;
end;
/

-- procedure
set serveroutput on;
create or replace procedure getMinProductPrice is
  max_price product.expected_price%type;
begin
  select min(expected_price) into max_price from product;
  dbms_output.put_line('Max product price ' || max_price);
end;
/
show errors;

-- calling procedure
begin
  getMinProductPrice;
end;
/

-- parameterize procedure
set serveroutput on;
create or replace procedure add_client (
  p_id product.product_id%type) is
  p_name product.product_name%type;
begin
  
  select product_name into p_name from product where product_id=p_id;
  dbms_output.put_line('Product Id: ' || p_id || ' -> Product Name: ' || p_name);
  
end add_client;
/
show errors;

-- calling procedure
begin
  add_client(3);
  
end;
/

-- function
-- get average of expected price

create or replace function avg_expected_price return number is
  avg_price product.expected_price%type;
begin
  select avg(expected_price) into avg_price from product;
  return avg_price;
end;
/

set serveroutput on;
begin
  dbms_output.put_line('Average expected price: ' || avg_expected_price);
end;
/

-- parameterize function
-- get sum over a category

create or replace function getSum(
  cat in product.category%type) return number is
s number;
begin
  select sum(nvl(expected_price,0)) into s from product where category=cat;
  return s;
end;
/

set serveroutput on;
declare
  cat product.category%type;
begin
  cat:='mobile';
  dbms_output.put_line('The sum of all price over ' || cat || ' category is ' || getSum(cat));

end;
/

commit;

-- trigger
create trigger tr_payment_time
before update or insert on payment
for each row
begin
  :new.payment_date:=sysdate;
end tr_payment_time;
/
show errors;

insert into payment(pay_id) values(19);
select * from payment;

create trigger ad_current_time
before update or insert on advertisement
for each row
begin
  :new.current_date:=sysdate;
end ad_current_time;
/
show errors;

insert into advertisement(ad_no, end_date, user_id, product_id, pay_id) values (015, '29-oct-2022', 006, 009, 012);
select * from advertisement;

-- rollback until last commit
insert into product values (015, 20000, 'used', 'iphone xe', 'mobile', '6 month');
insert into product values (016, 30000, 'used', 'asus d47x', 'laptop', '11 month');
commit;
select * from product;
rollback;
select * from product;
insert into product values (017, 25000, 'used', 'LG Tv x-123', 'TV', '6 month');
insert into product values (018, 15000, 'used', 'LG washing machine', 'Home', '6 month');
select * from product;
rollback;
select * from product;

-- rollback to a checkpoint
commit;
select * from product;
insert into product values (020, 5000, 'used', 'walton d7 min', 'mobile', '6 month');
savepoint ckpoint;
insert into product values (021, 8000, 'used', 'symphony z31', 'mobile', '8 month');
rollback to ckpoint;
select * from product;

-- some operation with date

-- current date
select sysdate from dual;

select current_date from dual;

select systimestamp from dual;

-- least and greatest date between two date

select least (to_date('22-DEC-2007'), to_date('12-DEC-2008'))
from dual;

select greatest (to_date('22-DEC-2007'), to_date('12-DEC-2008'))
from dual;

-- will show the last day of that particular month

select last_day(end_date) from advertisement;

-- uses of extract

-- extract the year
select ad_no, extract(year from end_date) as year from advertisement;

-- extract the month
select ad_no, extract(month from end_date) as month from advertisement;

-- six month extention/reduction
select add_months(end_date, 6) as six_months_extension from advertisement;

select add_months(end_date, -6) as six_months_reduction from advertisement;

-- no of day the ad will show
select (end_date-current_date) from advertisement;
