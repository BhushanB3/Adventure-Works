--  This credential is used to authenticate access to external resources (e.g., Azure Data Lake, Blob Storage)  
CREATE DATABASE SCOPED CREDENTIAL cred_adv
WITH
    IDENTITY = 'Managed Identity'

-- This allows Synapse to query data stored in the **Silver layer** of Azure Data Lake Storage (ADLS)  
CREATE EXTERNAL DATA SOURCE src_silver
WITH(
    LOCATION = 'https://adventuredatab3.blob.core.windows.net/silver/',
    CREDENTIAL = cred_adv
)

-- This allows Synapse to query data stored in the **Gold layer** of Azure Data Lake Storage (ADLS)  
CREATE EXTERNAL DATA SOURCE src_gold
WITH(
    LOCATION = 'https://adventuredatab3.blob.core.windows.net/gold/',
    CREDENTIAL = cred_adv
)

-- This defines how data is structured in the external files stored in Azure Data Lake Storage (ADLS)  
CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)