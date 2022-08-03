CREATE OR REPLACE FUNCTION add_customer(
  _first_name VARCHAR,
  _last_name VARCHAR
)
RETURNS void
AS $MAIN$
  BEGIN
    INSERT INTO customer(first_name, last_name)
    VALUES (_first_name, _last_name);
  END;
$MAIN$
LANGUAGE plpgsql;

-- DROP FUNCTION add_customer;

--————————————————————————————————————————————————————

CREATE OR REPLACE FUNCTION add_car(
  _vin VARCHAR,
  _model VARCHAR,
  _make VARCHAR,
  _year INT,
  _display_price FLOAT
)
RETURNS void
AS $MAIN$
  BEGIN
    INSERT INTO car(vin, model, make, year, display_price)
    VALUES (_vin, _model, _make, _year, _display_price);
  END;
$MAIN$
LANGUAGE plpgsql;

-- DROP FUNCTION add_car;

--————————————————————————————————————————————————————

CREATE OR REPLACE FUNCTION add_salesman(
  _first_name VARCHAR,
  _last_name VARCHAR
)
RETURNS void
AS $MAIN$
  BEGIN
    INSERT INTO salesman(first_name, last_name)
    VALUES (_first_name, _last_name);
  END;
$MAIN$
LANGUAGE plpgsql;

-- DROP FUNCTION add_salesman;

--————————————————————————————————————————————————————

CREATE OR REPLACE FUNCTION add_mechanic(
  _first_name VARCHAR,
  _last_name VARCHAR
)
RETURNS void
AS $MAIN$
  BEGIN
    INSERT INTO mechanic(first_name, last_name)
    VALUES (_first_name, _last_name);
  END;
$MAIN$
LANGUAGE plpgsql;

-- DROP FUNCTION add_mechanic;

--————————————————————————————————————————————————————

CREATE OR REPLACE FUNCTION add_service(
  _customer_id INT,
  _vin VARCHAR
)
RETURNS void
AS $MAIN$
  BEGIN
    INSERT INTO "service"(customer_id, vin, "day")
    VALUES (_customer_id, _vin, NOW()::timestamp);
  END;
$MAIN$
LANGUAGE plpgsql;

-- DROP FUNCTION add_service;

--————————————————————————————————————————————————————

CREATE OR REPLACE FUNCTION add_mechanic_service(
  _mechanic_id INT,
  _service_id INT
)
RETURNS void
AS $MAIN$
  BEGIN
    INSERT INTO mechanic_service(mechanic_id, service_id)
    VALUES (_mechanic_id, _service_id);
  END;
$MAIN$
LANGUAGE plpgsql;

-- DROP FUNCTION add_mechanic_service;

--————————————————————————————————————————————————————

-- DROP FUNCTION add_invoice;
CREATE OR REPLACE FUNCTION add_invoice(
  _vin VARCHAR,
  _total_cost INT,
  _total_paid INT,
  _salesman_id INT,
  _customer_id INT
)
RETURNS void
AS $MAIN$
  BEGIN
    INSERT INTO invoice(vin, total_cost, total_paid, salesman_id, customer_id)
    VALUES (_vin, _total_cost, _total_paid, _salesman_id, _customer_id);
  END;
$MAIN$
LANGUAGE plpgsql;
