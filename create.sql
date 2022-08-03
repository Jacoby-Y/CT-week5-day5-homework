DROP TABLE IF EXISTS car CASCADE;
CREATE TABLE car(
  -- car_id SERIAL PRIMARY KEY,
  vin VARCHAR(17) PRIMARY KEY,
  model VARCHAR(30),
  make VARCHAR(30),
  year INT,
  display_price FLOAT
);

DROP TABLE IF EXISTS salesman CASCADE;
CREATE TABLE salesman(
  salesman_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
  last_name VARCHAR(30)
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
  customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
  last_name VARCHAR(30)
);

DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
  mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
  last_name VARCHAR(30)
);


DROP TABLE IF EXISTS "service" CASCADE;
CREATE TABLE "service"(
  service_id SERIAL PRIMARY KEY,
	customer_id INT,
  vin VARCHAR(17),
	day TIMESTAMP
);

DROP TABLE IF EXISTS mechanic_service CASCADE;
CREATE TABLE mechanic_service(
  mechanic_id INT,
	service_id INT,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(service_id) REFERENCES "service"(service_id)
);

DROP TABLE IF EXISTS invoice CASCADE;
CREATE TABLE invoice(
  invoice_id SERIAL PRIMARY KEY,
  vin VARCHAR,
  total_cost INT,
  total_paid INT,
  salesman_id INT,
  customer_id INT,
	FOREIGN KEY(vin) REFERENCES car(vin),
	FOREIGN KEY(salesman_id) REFERENCES salesman(salesman_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
