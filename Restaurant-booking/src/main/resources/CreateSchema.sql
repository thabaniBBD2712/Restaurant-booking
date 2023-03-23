CREATE TABLE `bookings` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`booking_name` varchar(50) NOT NULL,
	`email` varchar(255) NOT NULL,
	`no_of_participants` INT NOT NULL,
	`booking_date_time` DATETIME NOT NULL,
	`status_id` INT NOT NULL,
	`seating_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `seating` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`seating_type_id` INT NOT NULL,
	`location_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `location` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`location_description` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `bookingstatus` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`status_description` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `seatingtype` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`seating_type_description` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `bookings` ADD CONSTRAINT `bookings_fk0` FOREIGN KEY (`status_id`) REFERENCES `bookingstatus`(`id`);

ALTER TABLE `bookings` ADD CONSTRAINT `bookings_fk1` FOREIGN KEY (`seating_id`) REFERENCES `seating`(`id`);

ALTER TABLE `seating` ADD CONSTRAINT `seating_fk0` FOREIGN KEY (`seating_type_id`) REFERENCES `seatingtype`(`id`);

ALTER TABLE `seating` ADD CONSTRAINT `seating_fk1` FOREIGN KEY (`location_id`) REFERENCES `location`(`id`);



