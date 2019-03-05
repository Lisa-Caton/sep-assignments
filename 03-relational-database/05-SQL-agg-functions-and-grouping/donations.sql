CREATE TABLE donations(
  "donor"  VARCHAR(16),
  "amount" DECIMAL(13,4),
  "date"   DATE
);

INSERT INTO donations
    ("donor",     "amount", "date")
VALUES
    ('Daenerys',   102,     '2017-03-22'),
    ('Missandei',   25,     '2017-03-23'),
    ('Missandei',   30,     '2017-03-24'),
    ('Daenerys',    71,     '2017-03-25'),
    ('Tyrion',      60,     '2017-03-26'),
    ('Sansa',       33,     '2017-03-27'),
    ('Jon',         25,     '2017-03-28'),
    ('Missandei',   10,     '2017-03-29'),
    ('Arya',        15,     '2017-03-30'),
    ('Tormund',     50,     '2017-03-31'),
    ('Bran',        25,     '2017-04-01'),
    ('Arya',        30,     '2017-04-02'),
    ('Brienne',     75,     '2017-04-03'),
    ('Margaery',   120,     '2017-04-04'),
    ('Samwell',     20,     '2017-04-05'),
    ('Melisandre',  45,     '2017-04-06'),
    ('Petyr',       70,     '2017-04-07'),
    ('Theon',        5,     '2017-04-08'),
    ('Bronn',       20,     '2017-04-09'),
    ('Daario',      10,     '2017-04-10'),
    ('Gilly',        7,     '2017-04-11'),
    ('Ygritte',     30,     '2017-04-12'),
    ('Tyrion',      50,     '2017-04-13'),
    ('Arya',        15,     '2017-04-14'),
    ('Tyrion',      10,     '2017-04-15'),
    ('Missandei',   25,     '2017-04-16'),
    ('Theon',       15,     '2017-04-17');