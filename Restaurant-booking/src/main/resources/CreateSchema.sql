drop database bookingsdb;

create database bookingsdb;

use bookingsdb;

CREATE TABLE `bookings` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`bookingName` varchar(50) NOT NULL,
	`email` varchar(255) NOT NULL,
	`noOfParticipants` INT NOT NULL,
	`bookingDateTime` DATETIME NOT NULL,
	`statusId` INT NOT NULL,
	`seatingId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `seating` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`seatingTypeId` INT NOT NULL,
	`locationId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `location` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`locationDescription` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `bookingstatus` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`statusDescription` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `seatingtype` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`seatingTypeDescription` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `bookings` ADD CONSTRAINT `bookings_fk0` FOREIGN KEY (`statusId`) REFERENCES `bookingstatus`(`id`);

ALTER TABLE `bookings` ADD CONSTRAINT `bookings_fk1` FOREIGN KEY (`seatingId`) REFERENCES `seating`(`id`);

ALTER TABLE `seating` ADD CONSTRAINT `seating_fk0` FOREIGN KEY (`seatingTypeId`) REFERENCES `seatingtype`(`id`);

ALTER TABLE `seating` ADD CONSTRAINT `seating_fk1` FOREIGN KEY (`locationId`) REFERENCES `location`(`id`);




