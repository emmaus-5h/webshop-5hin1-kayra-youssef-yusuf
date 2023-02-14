--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
  resell NUMERIC(10, 2)
  stock_id INTEGER,
  interest_id INTEGER,
  supply_id VARCHAR,
  time_id INTEGER,
  category VARCHAR(255)
);

  
--stocks 1:n relatie
CREATE TABLE stocks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  instock VARCHAR(150)
);

--interest 1;n relatie 
CREATE TABLE interest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR
);

--size n:m relatie
CREATE TABLE supplier (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  brand VARCHAR
);

--interest 1:n relatie
CREATE TABLE deliverytime (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timedeliver TEXT
);

-- 
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Rolex GMT-Master', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 24600);

insert into products (name, description, code, price) values ('Rolex Day-Date', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);

insert into products (name, description, code, price) values ('Rolex Daytona', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);

insert into products (name, description, code, price) values ('Rolex Datejust', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);



--stocks
insert into stocks (instock) values ('Almost sold out');
insert into stocks (instock) values ('Enough in stock');

--interest
insert into interest (name) values ('Popular');
insert into interest (name) values ('Underrated');

--supplier
insert into supplier (brand) values ('Rolex');
insert into supplier (brand) values ('Audemars Piquet');
insert into supplier (brand) values ('Patek Philippe');

--deliverytime 
insert into deliverytime (timedeliver)
values ('3-5 business days');
insert into deliverytime (timedeliver)
values ('7-10 business days');
insert into deliverytime (timedeliver)
values ('1-3 business days');