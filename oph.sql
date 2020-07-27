-- living room
CREATE TABLE oph_room (
  id VARCHAR(16),
  layout int,
  PRIMARY KEY (id)
);

CREATE TABLE oph_department (
  id VARCHAR(16),
  name VARCHAR(64),
);

CREATE TABLE oph_elder (
  id VARCHAR(32),
  name VARCHAR(32),
  sex VARCHAR(16),
  birthday DATE,
  joinday DATE,
  leaveday DATE,
  int room_id,
  PRIMARY KEY (id),
  FOREIGN KEY (room_id) REFERENCE oph_room(id)
);

CREATE TABLE oph_employee (
  id VARCHAR(32),
  name VARCHAR(32),
  sex VARCHAR,
  birthday Date,
  joinday DATE,
  leaveday DATE,
  PRIMARY KEY (id)
);
--part I end--
