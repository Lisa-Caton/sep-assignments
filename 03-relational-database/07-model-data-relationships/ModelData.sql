/*createdb -U postgres -w ModelData*/

CREATE TABLE room (
  "room_ID"           INTEGER,
  "room_number"       INTEGER,
  "floor_number"      INTEGER,
  "price_per_night"   INTEGER
);

CREATE TABLE guest (
  "guest_ID"          INTEGER,
  "first_name"        TEXT,
  "last_name"         TEXT,
  "phone_number"      VARCHAR(15),
  "email"             VARCHAR(320),
  "street_address"    VARCHAR(100),
  "apartment_number"  VARCHAR(20) DEFAULT NULL,
  "city"              VARCHAR(50),
  "state"             VARCHAR(25),
  "zip_code"          VARCHAR(10)
);

CREATE TABLE booking (
  "booking_ID"        INTEGER,
  "room_ID"           INTEGER,
  "guest_ID"          INTEGER,
  "check_in_date"     DATE,
  "check_out_date"    DATE
);


INSERT INTO room
("room_ID", "room_number", "floor_number", "price_per_night")
VALUES
  ( 1,          2,              3,              800.00),
  ( 2,          1,              5,              299.00),
  ( 3,          9,              1,              1500.00),
  ( 4,          12,             4,              470.00),
  ( 5,          7,              3,              120.00);

INSERT INTO guest
("guest_ID", "first_name", "last_name", "phone_number",       "email",           "street_address", "apartment_number", "city",      "state",   "zip_code")
VALUES
  (1001,       'Sarah',      'Warner',  '410-996-2418', 'SarahWarner@gmail.com',  '639 Fort Ave',       '609',         'Tampa',      'FL',      '32438'),
  (2002,       'Kelly',      'Angel',   '301-989-6455', 'KellyAngel@gmail.com',   '3100 Falls Rd',       NULL,         'Phoenix',    'AZ',      '85001'),
  (3003,       'Carl',       'Block',   '443-652-1182', 'CarlBlock@gmail.com',    '10 Light St',         NULL,         'Cruz Bay',   'VI',      '00823'),
  (4004,       'Bert',       'Gamble',  '301-204-9642', 'BertGamble@gmail.com',   '308 Mable Dr',       '203',         'Boise',      'ID',      '83211'),
  (5005,       'Annie',      'Smith',   '506-718-4562', 'AnnieSmith@gmail.com',   '56 Space St',         NULL,         'Witchita',   'KS',      '66104');


INSERT INTO bookingt
("booking_ID", "room_ID", "guest_ID",   "check_in_date",       "check_out_date")
VALUES
  (001,           1,        1001,        DATE '2016-01-09',    DATE '2016-01-15'),
  (002,           2,        2002,        DATE '2016-02-02',    DATE '2016-02-12'),
  (003,           3,        3003,        DATE '2016-01-09',    DATE '2016-01-14'),
  (004,           4,        4004,        DATE '2016-11-21',    DATE '2016-11-29'),
  (005,           5,        5005,        DATE '2016-06-24',    DATE '2016-07-02');


