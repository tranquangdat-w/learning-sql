CREATE TABLE IF NOT EXISTS favorite_food(
  person_id SMALLINT UNSIGNED,  
  food varchar(20),
  CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
  CONSTRAINT fk_fav_person_id FOREIGN KEY (person_id) REFERENCES person (person_id)
);

desc favorite_food;
show desc person;

INSERT INTO favorite_food (person_id, food) VALUES(100, "trung cut can mo")

