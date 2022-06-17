-- TO CREATE A DATABASE CALLED FODBAG
CREATE DATABASE foodbag;
USE foodbag;

-- TO CREATE THE FOOD_TABLE
CREATE TABLE food (
	id INT AUTO_INCREMENT NOT NULL,
    type VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


-- TO CREATE THE VENDOR FOOD_TABLE
CREATE TABLE vendors (
	id INT AUTO_INCREMENT NOT NULL,
    admin_id INT NOT NULL,
    food_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    amount DOUBLE NOT NULL,
    PRIMARY KEY (id),
--     LINKING IT TO THE FOOD_TABLE
    FOREIGN KEY (food_id) REFERENCES food (id)
);


-- TO CREATE THE ADMINS_TABLE
CREATE TABLE admins (
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR (255) NOT NULL,
    type INT NOT NULL,
    email_address VARCHAR (255) NOT NULL,
    phone_number INT NOT NULL,
    password VARCHAR (255) NOT NULL,
    PRIMARY KEY (id)
);


-- TO CREATE THE CUSTOMERS_TABLE
CREATE TABLE customers (
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR (255) NOT NULL,
    phone_number INT NOT NULL,
    address VARCHAR (255) NOT NULL,
    payment_method VARCHAR (255),
    PRIMARY KEY (id)
);


-- TO CREATE THE ORDERS_TABLE
CREATE TABLE orders (
	id INT AUTO_INCREMENT NOT NULL,
    vendors_id INT NOT NULL,
    customers_id INT NOT NULL,
    PRIMARY KEY (id),
    --     LINKING IT TO THE VENDORS AND CUSTOMERS_TABLES
    FOREIGN KEY (vendors_id) REFERENCES vendors (id),
    FOREIGN KEY (customers_id) REFERENCES customers (id)
);