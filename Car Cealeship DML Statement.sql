-- DML Statement
SELECT *
FROM salesperson;

-- Add data to customer table
INSERT INTO customer (
    first_name,
	last_name,
	email,
	address,
	city,
	state,
	zipcode
)
VALUES
    (
    	'Michael',
        'Ziggler',
        'mziggler@xyz.com',
        '420 Mindbender Road',
        'Mycity',
        'MI',
        43225
    ),
    (
        'Mica',
        'Voight',
        'voight12@xyz.com',
        '2231 Mind Yourself Road',
        'Upcity',
        'AL',
        22210
    ),
    (
        'Florence',
        'Thomas',
        '12004@xyz.com',
        '2520 Mindbender Road',
        'Mycity',
        'MI',
        43225
    ),
    (
        'Ned',
        'Pooler',
        'pooler33@xyz.com',
        '1420 Mindbender Road',
        'Mycity',
        'MI',
        43225
    ),
    (
        'Todd',
        'Brute',
        'brutt@xyz.com',
        '7731 Mystreet blvd',
        'Tuckcity',
        'GA',
        33332
    ),
    (
        'Nora',
        'Jones',
        'nojones@xyz.com',
        '2520 Manchester Road',
        'Mycity',
        'GA',
        43225
    );
   
   
   
   
   SELECT *
   FROM product;
  
  
  
  
  -- Inserting Data into a table with a Foreign Key
INSERT INTO product (
	prod_name,
	description,
	price,
	quantity,
	salesperson_id,
	category_id
) VALUES (
	'Mercedes‑Benz',
	'A small luxury sedan',
	340.00,
	480,
	1,
	2
), (
	'Acura',
	'Amazing is here!',
	332.00,
	110,
	1,
	1
), (
	'Audi',
	'Good luxury subcompact sedan',
	268.00,
	150,
	1,
	1
);



-- Add data to salesperson table
INSERT INTO salesperson (
    first_name,
	last_name,
	email,
	address,
	city,
	state,
	zipcode
)
VALUES
    (
        'Ned',
        'Pooler',
        'pooler33@xyz.com',
        '1420 Mindbender Road',
        'Mycity',
        'MI',
        43225
    ),
    (
        'Todd',
        'Brute',
        'brutt@xyz.com',
        '7731 Mystreet blvd',
        'Tuckcity',
        'GA',
        33332
    ),
    (
        'Nora',
        'Jones',
        'nojones@xyz.com',
        '2520 Manchester Road',
        'Mycity',
        'GA',
        43225
    );
    

   
   SELECT *
   FROM category;
  
  
  
   -- create a procedure to add a TABLE 
CREATE OR REPLACE PROCEDURE add_category(
	name varchar(45),
	make varchar(6),
	model varchar(10),
	NEW BOOLEAN
)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO category(name, make, model, new_)
	values('Mercedes Benz', ' ', 'A-Class', TRUE);
END
$$;



-- Add data to category table
INSERT INTO category (
    name,
	make,
	model,
	new_
)
VALUES
    (
        'Mercedes Benz',
        'Sedan',
        'A-Class',
        TRUE
    ),
    (
        'Acura',
        'SUV',
        'MDX',
        TRUE
    ),
    (
        'Audi',
        'Sedan',
        'A3',
        FALSE
    );
   
   
   SELECT *
   FROM invoice_product;
  
  
  
   
   
   -- Inserting Data into Invoice table with a Foreign Key
INSERT INTO invoice (
	invoice_date,
	sales,
	customer_id
) VALUES (
	Now(),
	TRUE,
	1
), (
	Now(),
	TRUE,
	2
), (
	Now(),
	FALSE,
	1
);


 -- Inserting Data into mechanic table with a Foreign Key
INSERT INTO mechanic (
	name,
	service_date,
	invoice_id
) VALUES (
	'Joey Manuel',
	Now(),
	1
), (
	'Jon Guy',
	Now(),
	2
), (
	'Fred Meek',
	Now(),
	1
);


 -- Inserting Data into Invoice-Product table with a Foreign Key
INSERT INTO invoice_product (
	product_id
) VALUES (
	1
), (
	2
), (
	1
);

   