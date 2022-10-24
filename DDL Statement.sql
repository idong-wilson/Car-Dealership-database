--Car Dealership DDl Statements

CREATE TABLE customer(
	customer_id serial PRIMARY key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50),
	address varchar(100),
	city varchar(25),
	state varchar(2),
	zipcode integer
);

CREATE TABLE salesperson(
	salesperson_id serial PRIMARY key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50),
	address varchar(100),
	city varchar(25),
	state varchar(2),
	zipcode integer
);

-- Invoice table with forign key
CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	invoice_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	sales BOOLEAN,
	customer_id INTEGER NOT NULL,
	-- Syntax: FOREIGN KEY(column_in_domestic_table) REFERENCES foreign_table_name(column_in_foreign_table)
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- Create Invoice-Product Table (Join Table between the Invoice and Product table)
CREATE TABLE invoice_product(
	invoice_id INTEGER NOT NULL,
	FOREIGN KEY(invoice_id) REFERENCES invoice(invoice_id),
	product_id INTEGER NOT NULL
--	FOREIGN KEY(product_id) REFERENCES product(product_id) 
);

-- Create the Product Table AND THEN alter invoice_pruduct to add foreign KEY 
CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	prod_name VARCHAR(35),
	description VARCHAR(100),
	price NUMERIC(5,2),
	quantity INTEGER
);

-- Alter invoice_product table to add to foreign key
ALTER TABLE invoice_product 
ADD FOREIGN KEY(product_id) REFERENCES product(product_id);


-- Create a category table
CREATE TABLE category(
	category_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	make VARCHAR(6),
	model varchar(4),
	new_ BOOLEAN
);

-- Create Mechanic Table with a Foreign Key to Invoice_id table
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	name varchar(45),
	service_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	invoice_id INTEGER NOT NULL,
	-- Syntax: FOREIGN KEY(column_in_domestic_table) REFERENCES foreign_table_name(column_in_foreign_table)
	FOREIGN KEY(invoice_id) REFERENCES invoice(invoice_id)
);


SELECT *
FROM customer;











