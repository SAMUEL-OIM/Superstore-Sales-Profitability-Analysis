-- Using the Superstore

SELECT * 
FROM assignment3.samplestore;
DESC samplestore;

-- Renaming the column for easier re-mentions
ALTER TABLE samplestore
RENAME COLUMN `Row ID` TO `Row_ID`;
ALTER TABLE samplestore
RENAME COLUMN `Order ID` TO `Order_ID`;
ALTER TABLE samplestore
RENAME COLUMN `Order Date` TO `Order_Date`;
ALTER TABLE samplestore
RENAME COLUMN `Ship Date` TO `Ship_Date`;
ALTER TABLE samplestore
RENAME COLUMN `Ship mode` TO `Ship_mode`;
ALTER TABLE samplestore
RENAME COLUMN `Customer ID` TO `Customer_ID`;
ALTER TABLE samplestore
RENAME COLUMN `Customer Name` TO `Customer_name`;
ALTER TABLE samplestore
RENAME COLUMN `Postal Code` TO `Postal_Code`;
ALTER TABLE samplestore
RENAME COLUMN `Sub-Category` TO `Sub_Category`;
ALTER TABLE samplestore
RENAME COLUMN `Prdouct_Name` TO `Product_Name`;
ALTER TABLE samplestore
RENAME COLUMN `Discount` TO `Discount(%)`;
ALTER TABLE samplestore
RENAME COLUMN `Profit/Loss` TO `Profit_or_Loss`;

-- Modify the datatype of the "Ship_Date" and structuring the format
UPDATE samplestore
SET Ship_Date = STR_TO_DATE(Ship_Date,"%m/%d/%Y");
ALTER TABLE samplestore
MODIFY Ship_Date DATE;

-- Which product categories bring in the most revenue, 
-- and are they also the most frequently sold? YES
UPDATE assignment3.samplestore
SET Sales = REPLACE(REPLACE(Sales,"$",""),",","");

ALTER TABLE samplestore
MODIFY Sales INT,
MODIFY Quantity INT;

SELECT Category, 
	   ROUND(SUM(Sales),2) AS Revenue, 
       COUNT(Quantity) AS Frequency
FROM assignment3.samplestore
GROUP BY Category
ORDER BY Revenue DESC;

-- Find the top 5 products that consistently contribute the most to profit, regardless of quantity sold.
UPDATE assignment3.samplestore
SET Profit_or_Loss = REPLACE(REPLACE(REPLACE(REPLACE(Profit_or_Loss,"$",""),",",""),"(","-"),")","");

ALTER TABLE samplestore
MODIFY Profit_or_Loss INT;

SELECT Product_Name, 
		ROUND(SUM(Profit_or_Loss),2) AS Total_Profit_or_loss, 
		SUM(Quantity) AS Quantity
FROM assignment3.samplestore
GROUP BY Product_Name
ORDER BY Total_Profit_or_loss DESC
LIMIT 5;

-- Which sub-categories tend to be sold in high quantities but result in poor or negative profits?
SELECT Sub_Category, 
		SUM(Sales) AS Total_Sales, 
        SUM(Quantity) AS Quantity, 
        ROUND(SUM(profit_or_loss),2) AS `Profit/Loss`
FROM assignment3.samplestore
GROUP BY Sub_Category
ORDER BY SUM(Quantity) DESC, SUM(profit_or_loss) DESC;

-- Which year or quarter had the best overall profit performance globally?
ALTER TABLE samplestore
MODIFY Order_Date DATE;

SELECT YEAR(Order_Date ) AS YEAR, QUARTER(Order_Date ) as Quarter, ROUND(SUM(profit_or_loss),2) AS profit_or_loss
FROM assignment3.samplestore
GROUP BY YEAR(Order_Date ), QUARTER(Order_Date )
ORDER BY SUM(profit_or_loss) DESC;