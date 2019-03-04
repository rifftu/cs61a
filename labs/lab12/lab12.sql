.read fa18data.sql

-- Q2
CREATE TABLE obedience AS
  SELECT seven, denero FROM students;

-- Q3
CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest > 13 ORDER BY smallest LIMIT 20;

-- Q4
CREATE TABLE matchmaker AS
  SELECT alias1.pet, alias1.song, alias1.color, alias2.color FROM students AS alias1, students AS alias2 WHERE alias1.pet == alias2.pet AND alias1.song == alias2.song AND alias2.time > alias1.time ORDER BY alias1.time;
