# Superstore-Sales-Profitability-Analysis
This project analyzes a retail Superstore dataset using SQL to uncover insights related to revenue, sales frequency, profitability, and time-based performance.
Tools & Technologies

## The analysis focuses on understanding:
- Revenue contribution by product category
- Profitability at product and sub-category levels
- Sales volume versus profit performance
- Time-based profit trends (yearly and quarterly)
 #### The goal is to demonstrate practical SQL skills while generating business-relevant insights from real-world retail data.

## Dataset Description
#### The Sample Superstore dataset contains retail transaction data, including:
- Order and shipping details
- Customer information
- Product category and sub-category
- Sales revenue
- Quantity sold
- Profit or loss
- Order date (used for time-based analysis)

 ## Tools & Skills Used
- SQL (MySQL)
- Data cleaning & transformation
- Aggregations and grouping
- Date manipulation
- Business insight interpretation

## Data Cleaning & Preparation
#### Before analysis, several preprocessing steps were performed:
- Renamed columns for consistency and ease of reference
- Converted date fields (Order_Date, Ship_Date) to proper DATE format
- Cleaned monetary fields by removing symbols ($, commas, parentheses)
- Converted numeric fields (Sales, Profit, Quantity) to appropriate data types
#### These steps ensured accurate aggregation and analysis.
`View Dataset Structure = SELECT * FROM assignment3.samplestore;
DESC samplestore;
`
