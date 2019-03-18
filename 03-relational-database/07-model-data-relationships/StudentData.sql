CREATE TABLE students (
  ID INTEGER,
  name VARCHAR(20),
  email VARCHAR(30)
);

CREATE TABLE classes (
  ID INTEGER,
  name VARCHAR(64),
  description VARCHAR(240)
);

CREATE TABLE grades (
  ID INTEGER,
  classes_ID INTEGER,
  students_ID INTEGER,
  letter_grade VARCHAR(1)
);

INSERT INTO students VALUES 
(1001, 'Max Roy', 'maxroy12@aol.com'),
(2002, 'Leon Day', 'leonday5@gmail.com'),
(3003, 'Carol Sings', 'carolsings2005@hotmail.com'),
(4004, 'Alex Jack', 'alexjack@aol.com'),
(5005, 'Topanga Blue', 'tblue2004@hotmail.com'),
(6006, 'Sean Scott', 'ss1982@hotmail.com'),
(7001, 'Adam Smith', 'adamsmith007@gmail.com'),
(8001, 'Shirley Katz', 'shirlkatxz@gmail.com'),
(9001, 'Andrew Dominon', 'andrewdomino@hotmail.com'),
(1010, 'Amelia Evelyn', 'ameliaeve@gmail.com'),
(1111, 'Charlie Baxter', 'charliebaxter@gmail.com'),
(1212, 'Emma Tone', 'msstoneusa@gmail.com'),
(1313, 'Sarah Keys', 'sarahkeys@gmail.com');

INSERT INTO classes VALUES 
(101, 'Math', 'learning algorithms'),
(102, 'Science', 'explore the world like Christopher!'),
(103, 'History', 'War of 1812'),
(104, 'Spanish', 'learn spanish'),
(105, 'French', 'learn french'),
(106, 'English', 'learn Anglo-Saxons');

INSERT INTO grades VALUES
(1, 101, 1001, 'A'),
(1, 103, 2002, 'B'),
(1, 104, 3003, 'C'),
(1, 104, 4004, 'D'),
(1, 101, 5005, 'E'),
(1, 101, 6006, 'F'),
(1, 102, 7001, 'A'),
(1, 105, 8001, 'B'),
(1, 102, 9001, 'B'),
(1, 103, 1010, 'A'),
(1, 106, 1111, 'B'),
(1, 102, 1212, 'B'),
(1, 105, 1313, 'B');
