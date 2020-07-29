
CREATE TABLE oph_like(
   id VARCHAR(32),
   name VARCHAR(32),
   sex VARCHAR,
   like VARCHAR(32),
   PRIMARY KEY (id),
);

CREATE TABLE oph_dislike(
   id VARCHAR(32),
   name VARCHAR(32),
   sex VARCHAR,
   dislike VARCHAR(32),
   PRIMARY KEY (id),
);

CREATE TABLE oph_extrachanges(
   id VARCHAR(32),
   name VARCHAR(32),
   sex VARCHAR,
   extrachanges INT(8),
   PRIMARY KEY (id),
);
--part I end--
