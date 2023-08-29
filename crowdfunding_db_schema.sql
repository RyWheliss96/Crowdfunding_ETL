-- Drop Tables
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;


-- Create category table
CREATE TABLE category (
    category_id VARCHAR(4) NOT NULL,
    category VARCHAR(255) NOT NULL,
    PRIMARY KEY (category_id)
);

-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) NOT NULL,
    subcategory VARCHAR(255) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

-- Create contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	PRIMARY KEY (contact_id)
);

--Create campaign table
CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    description VARCHAR(255)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(10)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(2)   NOT NULL,
    currency VARCHAR(3)   NOT NULL,
    launch_date VARCHAR(255)   NOT NULL,
    end_date VARCHAR(255)   NOT NULL,
    staff_pick BOOLEAN   NOT NULL,
    spotlight BOOLEAN   NOT NULL,
    category_id VARCHAR(4)   NOT NULL,
    subcategory_id VARCHAR(8)   NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- test category table
SELECT * FROM category;

-- test subcategory table
SELECT * FROM subcategory;

-- test contacts table
SELECT * FROM contacts;

-- test campaign table
SELECT * FROM campaign;