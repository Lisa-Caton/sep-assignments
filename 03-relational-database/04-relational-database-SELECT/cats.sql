CREATE TABLE cats(
  "id"            INTEGER,
  "name"          VARCHAR(16),
  "gender"        VARCHAR(1),
  "age"           INTEGER,
  "intake_date"   DATE,
  "adoption_date" DATE
);
    
INSERT INTO cats
    ("id", "name",   "gender", "age", "intake_date", "adoption_date")
VALUES
    ( 1, 'Mushi',    'M',       1,    '2016-01-09',  '2016-03-22'),
    ( 2, 'Seashell', 'F',       7,    '2016-01-09',   NULL),
    ( 3, 'Azul',     'M',       3,    '2016-01-11',  '2016-04-17'),
    ( 4, 'Victoire', 'M',       7,    '2016-01-11',  '2016-09-01'),
    ( 5, 'Nala',     'F',       1,    '2016-01-12',   NULL);
