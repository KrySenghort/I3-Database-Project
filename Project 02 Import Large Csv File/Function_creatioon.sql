CREATE DATABASE Project_02_Import_Large_Csv_File;
USE Project_02_Import_Large_Csv_File;

CREATE TABLE adidas_sales(
	Retailer VARCHAR(255),
    RetailerID INT,
    InvoiceDate DATE,
    Region VARCHAR(255),
    State VARCHAR(255),
    City VARCHAR(255),
    Product VARCHAR(255),
    Price_per_unit DOUBLE,
    Units_sold INT,
    Total_sales DOUBLE,
    Operating_profit DOUBLE,
    Sales_method VARCHAR(255)
);

SELECT * FROM adidas_sales;

LOAD DATA INFILE 'AdidasSales.csv' INTO TABLE adidas_sales 
FIELDS TERMINATED BY ',' IGNORE 1 LINES;    # use to import data into sql

SHOW VARIABLES LIKE 'secure_file_priv';     # show option of error.



















