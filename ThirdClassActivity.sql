CREATE SCHEMA formula22021_racing;
Use formula22021_racing;

CREATE TABLE racetrack ( 
racetrack_id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(250) NULL,
city VARCHAR(250) NULL,
PRIMARY KEY (racetrack_id));

CREATE TABLE race (
race_id INT AUTO_INCREMENT NOT NULL,
racetrack_id INT NOT NULL,
name VARCHAR(250) NOT NULL,
date DATE NOT NULL,
PRIMARY KEY (race_id),
FOREIGN KEY (racetrack_id) REFERENCES racetrack(racetrack_id));

INSERT INTO racetrack (name, city)
VALUES ("Red Bull Ring", "Spielberg"),
("Hungaroring", "Budapest"),
("Silverstone Circuit", "Silverstone"),
("Monza Circuit", "Monza"),
("Circuit de Monaco", "Monaco"),
("Suzuka Circuit", NULL);

INSERT INTO race (racetrack_id, name, date)
VALUES (1, "Austria 2020", "2020-07-05"),
(2, "Hungry  2020", "2020-07-19"),
(3, "Italy 2020", "2020-09-06"),
(4, "Monaco 2021", "2021-05-23");

SELECT * FROM race;
SELECT * FROM racetrack;

