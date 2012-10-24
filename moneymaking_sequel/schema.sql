CREATE TABLE person (
  ssn integer PRIMARY KEY,
  full_name text NOT NULL,
  home_state char(2) NOT NULL
);

CREATE TABLE account (
  account_id serial PRIMARY KEY,
  ssn int NOT NULL REFERENCES person(ssn) ON UPDATE CASCADE,
  current_balance float NOT NULL,
  last_transaction_amount float NOT NULL,
  last_transaction_on timestamp NOT NULL
);
