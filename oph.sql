/* Create tables */
-- living room
CREATE TABLE oph_room (
  id VARCHAR(16),
  layout int,
  PRIMARY KEY (id)
);

CREATE TABLE oph_department (
  id VARCHAR(16),
  name VARCHAR(32),
  PRIMARY KEY (id)
);

CREATE TABLE oph_elder (
  id VARCHAR(32),
  name VARCHAR(32),
  sex VARCHAR(16),
  birthday DATE,
  joinday DATE,
  leaveday DATE,
  room_id VARCHAR(16),
  PRIMARY KEY (id),
  FOREIGN KEY (room_id) REFERENCES oph_room(id),
  CONSTRAINT chk_sex CHECK (sex LIKE '男' OR sex LIKE '女')
);

CREATE TABLE oph_employee (
  id VARCHAR(32),
  name VARCHAR(32),
  sex VARCHAR(),
  birthday Date,
  joinday DATE,
  leaveday DATE,
  department_id VARCHAR(16),
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES oph_department(id),
  CONSTRAINT chk_sex CHECK (sex LIKE '男' OR sex LIKE '女')
);


/* Insert value */
INSERT INTO oph_room (id, layout) VALUES ('1024', 1), ('1025', 2), ('1026', 3);
INSERT INTO oph_department (id, name) VALUES ('D128', '医务部'), ('D129', '后勤部'), ('D130', '财务部');
INSERT INTO oph_elder (id, name, sex, birthday, joinday, leaveday,room_id) VALUES
('0x7fff', '老王', '男', '1977-01-01', '2010-02-03', NULL, 1024),
('0x7c00', '老李', '女', '1977-12-27', '2011-01-29', NULL, 1025);
