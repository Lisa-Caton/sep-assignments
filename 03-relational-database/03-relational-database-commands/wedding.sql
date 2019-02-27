    CREATE TABLE wedding (
      first_name text,
      last_name text,
      RSVP boolean,
      guests integer,
      meals NUMERIC(5, 2)
    );

    INSERT INTO wedding (first_name, last_name, RSVP, guests, meals) 
    VALUES
    ('Suzie', 'Sharp', true, 2, 2),
    ('Claire', 'Smith', true, 3, 2.5);

