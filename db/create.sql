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

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Rolex GMT-Master', 'Dit is het nieuwste exemplaar, ook wel pepsi genoemd. Deze horloge laat de tijd in twee verschillende tijdzones zien.', '816905633-0', 8000, 8650, 1, 1, 1, 1, 'rolex');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Rolex Day-Date', 'Dit horloge is compleet van goud gemaakt en heeft een diamond-plate. Dit horloge was de eerste polshorloge met kalenderfunctie waarop niet alleen de datum, maar ook de dag voluit geschreven was in een venster op de wijzerplaat.', '077030122-3', 45000, 46940,  1, 1, 1, 1, 'rolex');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category ) values ('Rolex Daytona', 'Prachtige horloge gemaakt van staal en titanium. Daytona is het ultieme multifunctionele horloge voor iedereen met een passie voor racen en snelheid. ', '693155505-7', 23450, 24760, 2, 2, 1, 1, 'rolex');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Rolex Datejust', 'Dit is ook wel het meest bekende horloge van rolex, het is gemaakt van witgoud en diamanten. Datejust is de eerste automatische waterdichte polschronometer die de datum weergaf in een venster op 3 uur op de wijzerplaat.', '686928463-6', 4670, 5455, 2, 2, 1, 1, 'rolex');

--Audemars Piquet

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Audemars Piquet Royal Oak', 'De Royal Oak is het bekendste en populairste model van de manufactuur uit Le Brassus. Dit geweldige horloge is gemaakt van black ceramic.', '686928463-6', 24920, 25480, 1, 1, 1, 1, 'ap');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Audemars Piquet Millenary', 'Dit is het eerste horloge dat Audemars piquet uitgebracht heeft. Zoals de naam het al aangeeft, heeft dit horloge een minutenrepetitie.', '077030122-3', 34340, 36980, 2, 2, 1, 1, 'ap');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Audemars Piquet Royal Oak Offshore', 'Dit horloge heeft een leren band en is van staal gemaakt. Je kunt dit horloge herkennen aan het patrijspoortdesign en de forse kast.', '077030122-3', 55470, 59320, 2, 1, 1, 1, 'ap');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Audemars Piquet Jules Audemars', 'Dit is het eerste Audemars Piquet-horloge met een eeuwigdurende kalender. Dit horloge is gemaakt van goud met een leren band.', '077030122-3', 42800, 47580, 2, 2, 1, 1, 'ap');

--Patek Philippe 

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Patek Phillipe Nautilus','De Nautilus-serie wordt gekenmerkt door een hoge technische standaard en een karakteristiek design. Dit is het perfecte horloge die een mix is van een stalen sporthorloge en een duur luxues horloge.', '077030122-2', 27680, 29670, 1, 1, 2, 1, 'patek');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Patek Phillipe Aquanaut ', 'Dit horloge is een modern sporthorloge, dat een betaalbare introductie in de wereld van de Geneefse manufactuur vormt. Het is een beeldschone horloge die is gemaakt van stainless steel.', '077030122-2', 69250, 72850, 1, 2, 1, 1, 'patek');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Patek Phillipe Complications', 'Deze horloge is een zeer begeerd model onder horlogekenners en verzamelaars. Het is een prachtige horloge die is gemaakt van witte ceramic.', '077030122-2', 56740, 58170, 2, 2, 1, 1, 'patek');

insert into products (name, description, code, price, resell, stock_id, interest_id, supply_id, time_id, category) values ('Patek Phillipe Gondolo', 'it soort horloges hebben een art deco-design en zijn hoekig of tonneauvormig. De gondolo is het oudste exemplaar van Patek Philippe die is gemaakt van goud en het heeft een speciale leren band.', '077030122-2', 42470,44560, 2, 2, 1, 1, 'patek');

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