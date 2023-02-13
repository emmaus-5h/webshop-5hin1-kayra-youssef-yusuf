--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
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


