CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
SHOW TABLES;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id CHAR(5), auto_incr INT(127),  last_name VARCHAR(30), first_name VARCHAR(30), phone_number VARCHAR(15), email VARCHAR(100), address VARCHAR(100), city VARCHAR(100), state_or_province VARCHAR(100), country VARCHAR(100), postal_code VARCHAR(20));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (invoice_nr CHAR(12), auto_incr INT(255), car_id CHAR(17), customer_id CHAR(5), salesperson CHAR(5), date_issued DATE);

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (vin CHAR(17), auto_incr INT(255), manufacturer VARCHAR(30), model VARCHAR(30), production_year YEAR, color VARCHAR(30));

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson (staff_id CHAR(5), auto_incr INT(255), last_name VARCHAR(30), first_name VARCHAR(30), store VARCHAR(50)); 

SHOW TABLES;
