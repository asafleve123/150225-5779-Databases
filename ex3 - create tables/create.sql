CREATE TABLE visitor
(
  id NUMERIC(9) NOT NULL,
  name VARCHAR(20) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  is_subscription VARCHAR(5) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ticket
(
  date DATE NOT NULL,
  price INT NOT NULL,
  kind VARCHAR(20) NOT NULL,
  ticket_id NUMERIC(10) NOT NULL,
  visitor_id NUMERIC(9),
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (visitor_id) REFERENCES visitor(id)
);

CREATE TABLE Sales_stand
(
  manager_id NUMERIC(9) NOT NULL,
  id NUMERIC(10) NOT NULL,
  kind VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);
