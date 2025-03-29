# Adventure Work Sales Data Engineering Project 🏅

## Project Overview

This project showcases a comprehensive data pipeline built to ingest, transform, and analyze Adventure Works sales data. The dataset includes information on 1,000+ of sales transactions, multiple product categories, and global customer demographics. The primary goal of this project is to design a scalable, efficient, and cloud-native solution using **Azure Data Engineering** tools to enable actionable insights through **Power BI** dashboards. 🚀

## Dataset Details

The dataset contains:
- Product: Product name, color, price, cost, category, subcategory
- Sales: Order date, quantity, productId, and other required details
- Customer: Name, email, income, gender and other basic details
- Returns: Product ans details like quantity, and from which terrirory

This rich dataset provided a foundation for a wide range of analyses, from gender representation to country-level performance metrics.

## Tech Stack

The following Azure tools and technologies were used to implement the end-to-end pipeline:
- **Azure Data Factory (ADF)**: For orchestrating the data movement.
- **Azure Data Lake Gen 2**: For storing raw and transformed data at scale.
- **Azure Blob Storage**: As a staging area for data ingestion.
- **Azure Databricks**: For advanced data transformation and processing using Spark.
- **Azure Synapse Analytics**: For integrating big data and performing further SQL analytics.
- **Power BI**: To visualize and generate insights from the data.

## Data Pipeline Architecture

![Pipeline Architecture](https://github.com/vedanthv/data-engineering-projects/assets/44313631/d0eeb64e-b6c9-40c8-bfde-413981d5fe0e)

The architecture includes:
1. **Data Ingestion**: Raw data from GitHub is dynamically ingested into Azure Blob Storage using Azure Data Factory.
2. **Data Transformation**: Using Databricks notebooks, the raw data is transformed into a clean and structured format, suitable for further analysis.
3. **Data Storage**: Transformed data is stored in Azure Data Lake Gen2 for long-term access and scalability.
4. **Data Analytics**: Using Synapse Analytics and Power BI, the data is queried, analyzed, and visualized.

## Data Ingestion

The raw data, hosted in a GitHub repository, is dynamically ingested using a loop into **Azure Blob Storage** using **Azure Data Factory**. The ingestion process ensures that the data is efficiently moved from source to cloud, maintaining data quality and integrity.

## Data Transformation

The transformation phase was carried out using **Azure Databricks**, leveraging **PySpark** for large-scale data processing. Key transformation steps include:
- **Data Cleansing**: Removing duplicates and invalid entries.
- **Data Normalization**: Restructuring the dataset to be analytics-friendly.
- **Deriving Insights**: Creating new fields such as unit price, unit cost

The transformed data is then stored in **Azure Data Lake Gen2** for persistent storage.

## Data Analytics and Visualization

With the transformed data stored in the lake, **Azure Synapse Analytics** was used to perform advanced queries and generate insights. For visualization, **Power BI** dashboards were created, enabling stakeholders to explore:
- **Sales Dashboard**: Sales matrices like Profit, Revenue, Sales By Country.
- **Product Dashboard**: Analyzing order distribution by subcategory, Top 15 most buyed products.
- **Reurn and Territoris Dashboard**: Insights into Number of customer in each country, Total Products returned.

### Dashboards and Reports

The final dashboards provide an interactive platform for decision-makers to drill down into specific metrics. The Power BI reports highlight key trends and patterns, offering valuable insights into Sales performance.


Live Dashboard : https://app.powerbi.com/view?r=eyJrIjoiNjE4NGVlYTQtNzFlNC00YjQzLWI2ODgtMzc2NmY1YzM1NDk0IiwidCI6IjM3ZDBlNjVjLWRhY2UtNDlmMy1iZWE1LTFjZWFmNDE3N2JhNCJ9&pageName=f818a1da3e8c18e69074

