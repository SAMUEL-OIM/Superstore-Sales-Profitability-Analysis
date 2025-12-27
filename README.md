# Superstore-Sales-Profitability-Analysis
This project analyzes a retail Superstore dataset using SQL to uncover insights related to revenue, sales frequency, profitability, and time-based performance.
Tools & Technologies

## Dataset Description
#### The Sample Superstore dataset contains retail transaction data, including:
- Order and shipping details
- Customer information
- Product category and sub-category
- Sales revenue
- Quantity sold
- Profit or loss
- Order date (used for time-based analysis)

  <img width="2472" height="816" alt="Samplestore  screenshot excel" src="https://github.com/user-attachments/assets/f47f7aaf-160b-4e21-9c16-057c07937d03" />


 ## Tools & Skills Used
- SQL (MySQL)
- Data cleaning & transformation
- Aggregations and grouping
- Date manipulation
- Business insight interpretation

## Data Cleaning & Preparation
#### Before analysis, several preprocessing steps were performed:
- `View Dataset Structure = SELECT * FROM assignment3.samplestore;
DESC samplestore;
- Renamed columns for consistency and ease of reference
 <img width="794" height="930" alt="Samplestore  screenshot" src="https://github.com/user-attachments/assets/084c87a6-f4cb-4d7b-ae3b-a7d485005e93" />
 
 
- Converted date fields (Order_Date, Ship_Date) to proper DATE format
- Cleaned monetary fields by removing symbols ($, commas, parentheses)
 
<img width="1030" height="462" alt="Samplestore  screenshot 2" src="https://github.com/user-attachments/assets/679a9ae6-0ff6-4a8e-acbc-d5a8a619391d" />

- Converted numeric fields (Sales, Profit, Quantity) to appropriate data types
#### These steps ensured accurate aggregation and analysis.

## Objectives
- Which product categories generate the highest revenue?
- Are high-revenue categories also the most frequently sold?
- What are the top 5 products that consistently contribute the most to profit, regardless of quantity sold?
- Which sub-categories sell in high quantities but result in poor or negative profits?
- Which year or quarter recorded the best overall profit performance?

## 🔍 Key Insights
- Technology generates the highest revenue among all product categories.
- High-revenue categories, particularly Technology, are also the most frequently sold, confirming a strong relationship between sales volume and revenue.
- A small group of products consistently contributes the most to overall profit, regardless of quantity sold, showing that high margins matter more than high volume.
- Some sub-categories record high sales quantities but produce low or negative profits, indicating inefficiencies in pricing or cost structure.
- Overall profit performance peaks in the third and fourth quarters, with Q3 and Q4 recording the highest profits, highlighting clear seasonal trends.

## Author: Samuel Olusesan
- @Samuel_OIM across all socials
