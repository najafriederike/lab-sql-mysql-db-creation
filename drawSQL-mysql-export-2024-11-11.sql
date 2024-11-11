CREATE TABLE `customers`(
    `customer_id` CHAR(255) NOT NULL,
    `auto_increment` INT NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state/province` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip/postal code` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`customer_id`)
);
ALTER TABLE
    `customers` ADD UNIQUE `customers_auto_increment_unique`(`auto_increment`);
ALTER TABLE
    `customers` ADD UNIQUE `customers_phone_number_unique`(`phone_number`);
ALTER TABLE
    `customers` ADD UNIQUE `customers_email_unique`(`email`);
CREATE TABLE `cars`(
    `vin` CHAR(255) NOT NULL,
    `auto_increment` INT NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NULL,
    PRIMARY KEY(`vin`)
);
ALTER TABLE
    `cars` ADD UNIQUE `cars_auto_increment_unique`(`auto_increment`);
CREATE TABLE `salesperson`(
    `staff_id` CHAR(255) NOT NULL,
    `auto_increment` INT NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`staff_id`)
);
ALTER TABLE
    `salesperson` ADD UNIQUE `salesperson_auto_increment_unique`(`auto_increment`);
CREATE TABLE `invoices`(
    `invoice_nr` CHAR(255) NOT NULL,
    `auto_increment` INT NOT NULL,
    `car_id` CHAR(255) NOT NULL,
    `customer` VARCHAR(255) NOT NULL,
    `salesperson` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    PRIMARY KEY(`invoice_nr`)
);
ALTER TABLE
    `invoices` ADD UNIQUE `invoices_auto_increment_unique`(`auto_increment`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_salesperson_foreign` FOREIGN KEY(`salesperson`) REFERENCES `salesperson`(`staff_id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_car_id_foreign` FOREIGN KEY(`car_id`) REFERENCES `cars`(`vin`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`customer`) REFERENCES `customers`(`customer_id`);