--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  resell NUMERIC(10, 2),
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


--Rolex 

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('GMT-Master', 'Dit is het nieuwste exemplaar, ook wel pepsi genoemd.', '816905633-0', 27000, 27500, 2, 1, 1, 1, 'rolex');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Day-Date', 'Dit horloge is compleet van goud gemaakt en heeft een diamond-plate.', '077030122-3', 16000, 16250,  2, 1, 1, 1, 'rolex');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category ) values ('Daytona', 'Prachtige horloge gemaakt van staal en titanium. ', '693155505-7', 15000, 17250, 2, 2, 1, 1, 'rolex');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Datejust', 'Dit is ook wel het meest bekende horloge van rolex, het is gemaakt van.', '686928463-6', 14000, 16950, 2, 2, 1, 1, 'rolex');

--Audemars Piquet

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Royal Oak', 'Dit geweldige horloge is gemaakt van black ceramic.', '686928463-6', 42000, 47500, 2, 2, 1, 1, 'ap');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Millenary', 'Dit is het eerste horloge dat Audemars piquet uitgebracht heeft.', '077030122-3', 21000, 27350, 2, 2, 1, 1, 'ap');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Royal Oak Offshore', 'Dit horloge heeft een leren band en is van staal gemaakt.', '077030122-3', 51000, 53500, 2, 1, 1, 1, 'AP');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Jules Audemars', 'Dit horloge is gemaakt van goud met een leren band.', '077030122-3', 34000, 40000, 2, 1, 1, 1, 'ap');

--Patek Philippe 

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Nautilus', 'Dit is het perfecte horloge gemaakt van ceramic en.', '077030122-2', 55000, 68000, 2, 1, 1, 1, 'patek');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Aquanaut ', 'Beeldschone horloge gemaakt van stainless steel.', '077030122-2', 33000, 41000, 2, 1, 1, 1, 'patek');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Complications ', 'Prachtige horloge gemaakt van witte ceramic.', '077030122-2', 46500, 52000, 2, 1, 1, 1, 'patek');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Gondolo', 'Het oudste exemplaar van Patek Philippe gemaakt van goud en heeft een speciale leren band.', '077030122-2', 11000,17500, 2, 1, 1, 1, 'patek');

--stocks
insert into stocks (instock) values ('Bijna uitverkocht');
insert into stocks (instock) values ('Instock');

--interest
insert into interest (name) values ('Populair');
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