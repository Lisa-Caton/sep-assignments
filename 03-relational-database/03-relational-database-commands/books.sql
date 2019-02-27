  CREATE TABLE books (
    ISBN integer,
    title text,
    author text,
    genre text,
    publishing_date date,
    copies integer,
    available_copies integer
  );


/*
Placed in terminal:
INSERT INTO books VALUES (0231133839, 'The Art of War', 'Sun Tzu', 'Intelligence Services', '2009-04-08', 500, 200);
INSERT INTO books VALUES (0394430778, 'The Invisible Government', 'David Wise', 'Intelligence Services', '1997-01-08', 250, 400);
INSERT INTO books VALUES (0684834979, 'From the Shadows', 'Robert M. Gates', 'Intelligence Services', '1996-02-23', 330, 5000);

UPDATE books SET copies=499 WHERE isbn=0231133839;

DELETE FROM books WHERE isbn=394430778;

--------------

CREATE TABLE spacecraft (
  id integer,
  name text,
  year_launched date,
  country_of_origin text,
  description_of_mission text,
  orbiting_body text,
  currently_operating boolean,
  distance_from_Earth float
);

INSERT INTO spacecraft VALUES (341, 'Lenny', '2040-06-24', 'USA', 'Let them eat cake!', 'The Moon', true, 11.2222);
INSERT INTO spacecraft VALUES (695, 'Karl', '2043-05-05', 'Mexico', 'Boom, Here comes the noise!', 'Mars', false, 98.452);
INSERT INTO spacecraft VALUES (421, 'Sylvia', '2020-06-03', 'Indonesia', 'Up ahead!', 'Venus', false, .02229);

DELETE FROM spacecraft WHERE id=695;

UPDATE spacecraft SET currently_operating=false WHERE id=341;

--------------

CREATE TABLE emails (
  id integer,
  subject_line text,
  sender text,
  additional_recipients text,
  body_of_the_email text,
  timestamp timestamp,
  read boolean,
  id_of_email integer
);

INSERT INTO emails VALUES (56691, 'Free Lunch Tomorrow', 'Claire', 'Sarah, Mike, Joe', 'Blank', '2019-02-27', true, 5);
INSERT INTO emails VALUES (60025, 'Trash', 'Mike', 'Claire, Sarah, Joe', 'Clean Sweep refrigerator time!', '2019-03-01', true, 6);
INSERT INTO emails VALUES (33274, 'Bike Ride?', 'Joe', 'Claire, Sarah, Mike', 'Today after 4pm', '2019-02-27', true, 9);

DELETE FROM emails WHERE id=33274;

UPDATE emails SET read=false WHERE id=60025;
*/

