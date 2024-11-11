INSERT INTO cars (vin, auto_incr, manufacturer, model, production_year, color) VALUES ROW ('3K096I98581DHSNUP', 1, 'Volkswagen', 'Tiguan', 2019, 'Blue'), ROW('ZM8G7BEUQZ97IH46V', 2,'Peugeot', 'Rifter', 2019, 'Red'), ROW('RKXVNNIHLVVZOUB4M', 3, 'Ford', 'Fusion', 2018, 'White'), ROW('HKNDGS7CU31E9Z7JW', 4, 'Toyota', 'RAV4', 2018, 'Silver'), ROW('DAM41UDN3CHU2WVF6', 5, 'Volvo', 'V60', 2019, 'Gray'), ROW('DAM41UDN3CHU2WVF6', 6, 'Volvo', 'Cross Country', 2019, 'Gray');
SELECT * FROM cars;

INSERT INTO customers (auto_incr, customer_id, last_name, first_name, phone_number, email, address, postal_code, city, state_or_province, country) VALUES ROW (1, '10001', 'Picasso', 'Pablo', '+34636176382', 'pablo.picasso@mail.com', 'Paseo de la Chopera, 14', '28045', 'Madrid', 'Madrid', 'Spain'), ROW (2, '20001', 'Lincoln', 'Abraham', '+13059077086', 'abraham.lincoln@mail.com', '120 SW 8th St', '33130', 'Miami', 'Florida', 'United States'), ROW (3, '30001', 'Bonaparte', 'Napoléon', '+33179754000', 'napoleon.bonaparte@mail.com', '40 Rue du Colisée', '75008', 'Paris', 'Île-de-France', 'France'); 
SELECT * FROM customers;

INSERT INTO invoices (auto_incr, date_issued, invoice_nr, car_id, customer_id, salesperson) VALUES ROW (1, '2018-08-22', '852399038', '3K096I98581DHSNUP', '10001', '00001'), ROW (2, '2018-12-31', '731166526', 'RKXVNNIHLVVZOUB4M', '20001', '00002'), ROW (3, '2019-01-19', '271135104', 'DAM41UDN3CHU2WVF6', '30001', '00003');
SELECT * FROM invoices;

INSERT INTO salesperson (auto_incr, staff_id, first_name, last_name, store) VALUES ROW (1,	'00001', 'Petey', 'Cruiser', 'Madrid'), ROW (2,	'00002', 'Anna', 'Sthesia', 'Barcelona'), ROW (3,	'00003', 'Paul', 'Molive', 'Berlin'), ROW (4,	'00004', 'Gail', 'Forcewind', 'Paris'), ROW (5,	'00005', 'Paige', 'Turner', 'Mimia'), ROW (6,	'00006', 'Bob', 'Frapples',	'Mexico City'), ROW (7,	'00007', 'Walter', 'Melon',	'Amsterdam'), ROW (8,	'00008', 'Shonda', 'Leer', 'São Paulo');
SELECT * FROM salesperson;