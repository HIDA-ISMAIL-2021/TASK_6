-- Create Database online_sales;
use online_sales;
SELECT * FROM OnlineSales;

SELECT * FROM vw_Month_Extraction;
SELECT * FROM vw_Monthly_Revenue;
SELECT * FROM vw_Monthly_Order_Volume;
SELECT * FROM vw_Monthly_Revenue_Volume;
SELECT * FROM vw_Top_5_Products;
SELECT * FROM vw_Revenue_By_Category;
SELECT * FROM vw_Payment_Methods;
SELECT * FROM vw_Revenue_By_Region;


-- 1. Extract Month from Date
CREATE VIEW vw_Month_Extraction AS
SELECT 
    MONTH([Date]) AS order_month,
    DATENAME(MONTH, [Date]) AS month_name
FROM OnlineSales
GROUP BY MONTH([Date]), DATENAME(MONTH, [Date]);


-- 2. Monthly Revenue Report
CREATE VIEW vw_Monthly_Revenue AS
SELECT 
    YEAR([Date]) AS Order_Year,
    MONTH([Date]) AS Order_Month,
    SUM([Total_Revenue]) AS Total_Revenue
FROM OnlineSales
GROUP BY YEAR([Date]), MONTH([Date]);


-- 3. Monthly Order Volume
CREATE VIEW vw_Monthly_Order_Volume AS
SELECT 
    YEAR([Date]) AS Order_Year,
    MONTH([Date]) AS Order_Month,
    COUNT(DISTINCT [Transaction_ID]) AS Order_Count
FROM OnlineSales
GROUP BY YEAR([Date]), MONTH([Date]);


-- 4. Monthly Revenue & Volume Together
CREATE VIEW vw_Monthly_Revenue_Volume AS
SELECT 
    YEAR([Date]) AS Order_Year,
    MONTH([Date]) AS Order_Month,
    COUNT(DISTINCT [Transaction_ID]) AS Order_Count,
    SUM([Total_Revenue]) AS Total_Revenue
FROM OnlineSales
GROUP BY YEAR([Date]), MONTH([Date]);


-- 5. Top 5 Products by Total Revenue
CREATE VIEW vw_Top_5_Products AS
SELECT 
    [Product_Name],
    SUM([Total_Revenue]) AS total_revenue
FROM OnlineSales
GROUP BY [Product_Name]
ORDER BY total_revenue DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;


-- 6. Total Revenue by Product Category
CREATE VIEW vw_Revenue_By_Category AS
SELECT 
    [Product_Category],
    SUM([Total_Revenue]) AS total_revenue
FROM OnlineSales
GROUP BY [Product_Category];


-- 7. Payment Method Preferences
CREATE VIEW vw_Payment_Methods AS
SELECT 
    [Payment_Method],
    COUNT(*) AS total_transactions,
    SUM([Total_Revenue]) AS total_revenue
FROM OnlineSales
GROUP BY [Payment_Method];


-- 8. Revenue by Region
CREATE VIEW vw_Revenue_By_Region AS
SELECT 
    [Region],
    SUM([Total_Revenue]) AS total_revenue
FROM OnlineSales
GROUP BY [Region];



