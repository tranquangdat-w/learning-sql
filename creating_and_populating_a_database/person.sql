SET autocommit = 0;
START TRANSACTION;
CREATE TABLE IF NOT EXISTS person (
  person_id SMALLINT UNSIGNED,
  fname VARCHAR(20),
  lname VARCHAR(20),
  eye_color ENUM('BR', 'BL', 'GR'),
  birth_date DATE,
  street VARCHAR(30),
  city VARCHAR(20),
  CONSTRAINT pk_person PRIMARY KEY(person_id)
);

INSERT INTO person (person_id, fname) VALUES(2, "dat");
INSERT INTO person (person_id, fname, eye_color) VALUES(3, "dat", "br");
SELECT * from person;

UPDATE person set person.fname = 'huyen' where person.person_id = 2;

SELECT * from person;
ROLLBACK;

SELECT *
FROM person;
