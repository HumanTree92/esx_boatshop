USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_boatdealer','Marina',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_boatdealer','Marina',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('boatdealer','Marina')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('boatdealer',0,'recruit','Recrue',10,'{}','{}'),
	('boatdealer',1,'novice','Novice',25,'{}','{}'),
	('boatdealer',2,'experienced','Experimente',40,'{}','{}'),
	('boatdealer',3,'boss','Patron',0,'{}','{}')
;

INSERT INTO `licenses` (type, label) VALUES
  ('boating', "Boating License")
;

CREATE TABLE `boatdealer_boats` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `owned_boats` (
	`owner` varchar(30) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `rented_boats` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(30) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `boat_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `boat_categories` (name, label) VALUES
	('boat','Boats'),
	('subs','Submersibles')
;

CREATE TABLE `boats` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	PRIMARY KEY (`model`)
);

INSERT INTO `boats` (name, model, price, category) VALUES
	('Dinghy 4Seat', 'dinghy', 25000, 'boat'),
	('Dinghy 2Seat', 'dinghy2', 20000, 'boat'),
	('Dinghy Yacht', 'dinghy4', 25000, 'boat'),
	('Jetmax', 'jetmax', 30000, 'boat'),
	('Marquis', 'marquis', 45000, 'boat'),
	('Seashark', 'seashark', 10000, 'boat'),
	('Seashark Yacht', 'seashark3', 10000, 'boat'),
	('Speeder', 'speeder', 40000, 'boat'),
	('Squalo', 'squalo', 32000, 'boat'),
	('Suntrap', 'suntrap', 34000, 'boat'),
	('Toro', 'toro', 38000, 'boat'),
	('Toro Yacht', 'toro2', 38000, 'boat'),
	('Tropic', 'tropic', 27000, 'boat'),
	('Tropic Yacht', 'tropic2', 27000, 'boat'),
	('Kraken', 'submersible2', 31000, 'subs'),
	('Submarine', 'submersible', 29000, 'subs')
;
