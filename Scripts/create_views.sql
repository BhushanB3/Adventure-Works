CREATE SCHEMA gold;

------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calender
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) as qcalender

--------------------
--  Create view customer
--------------------
CREATE VIEW gold.customer
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) as qcustomer

--------------------
-- Create view product
--------------------
CREATE VIEW gold.product
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as qproduct

--------------------
-- create view return
--------------------
CREATE VIEW gold.returns
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'parquet'
) AS qreturns

--------------------
-- create view prod_category
--------------------
CREATE VIEW gold.prod_category
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Product_Category/',
    FORMAT = 'parquet'
) AS qprod_category

--------------------
-- create view sales
--------------------
CREATE VIEW gold.sales
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'parquet'
) AS qsales

--------------------
-- create view sub category
--------------------
CREATE VIEW gold.sub_category
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'parquet'
) AS qsub_category

--------------------
-- create view territories
--------------------
CREATE VIEW gold.territories
AS
SELECT * FROM OPENROWSET(
    BULK 'https://adventuredatab3.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'parquet'
) AS qterritories
