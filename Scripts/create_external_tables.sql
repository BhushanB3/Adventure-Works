-- SELECT * FROM sys.external_tables 

-- DROP EXTERNAL TABLE gold.extSales

-- Calender Table
CREATE EXTERNAL TABLE gold.extCalender
WITH(
    LOCATION = 'extCalender',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calender

-- Customer Table
CREATE EXTERNAL TABLE gold.extCustomer
WITH(
    LOCATION = 'extCustomer',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * from gold.customer

-- Product Table
CREATE EXTERNAL TABLE gold.extProduct
WITH(
    LOCATION = 'extProduct',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
) 
AS SELECT * FROM gold.product

-- returns Table
CREATE EXTERNAL TABLE gold.extReturns
WITH(
    LOCATION = 'extReturns',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.returns

-- Sales table
CREATE EXTERNAL TABLE gold.extSales
WITH(
    LOCATION = 'extSales',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.sales

-- Sub_Category Table
CREATE EXTERNAL TABLE gold.extSub_category
WITH(
    LOCATION = 'extSub_category',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.sub_category

--  Territories Table
CREATE EXTERNAL TABLE gold.extTerritories
WITH(
    LOCATION = 'extTerritories',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.territories

--  Prod_category Table
CREATE EXTERNAL TABLE gold.extProd_Category
WITH(
    LOCATION = 'extProd_Category',
    DATA_SOURCE = src_gold,
    FILE_FORMAT = format_parquet
)
AS SELECT * FROM gold.prod_category
