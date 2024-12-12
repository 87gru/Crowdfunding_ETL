-- drop table if exists
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;

--contacts table
CREATE TABLE contacts(
contact_id INT PRIMARY KEY, -- PK designation auto-sets NOT NULL
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL
);

--category table
CREATE TABLE category(
category_id VARCHAR(4) PRIMARY KEY,
category VARCHAR(255) NOT NULL
);

--subcategory table
CREATE TABLE subcategory(
subcategory_id VARCHAR(10) PRIMARY KEY,
subcategory VARCHAR(255) NOT NULL
);

--campagin table
CREATE TABLE campaign(
cf_id INT PRIMARY KEY,
contact_id INT NOT NULL,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
company_name VARCHAR(255) NOT NULL,
description VARCHAR(255),
goal FLOAT NOT NULL,
pledged FLOAT NOT NULL,
outcome VARCHAR(10) NOT NULL,
backers_count INT NOT NULL,
country VARCHAR(2) NOT NULL,
currency VARCHAR(3) NOT NULL,
launch_date DATE NOT NULL,
end_date DATE NOT NULL,
category_id VARCHAR(4) NOT NULL,
FOREIGN KEY (category_id) REFERENCES category(category_id),
subcategory_id VARCHAR(10) NOT NULL,
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- After creating tables, import category, subcategory and contacts CSV files before importing campaign.csv. 
-- This is required due to the presence of foreign keys in campaign table referencing PKs in the other tables.


-- SELECT * statements. Run after creating tables and importing data to confirm success.

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;