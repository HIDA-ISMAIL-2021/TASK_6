# TASK_6

Online Sales SQL Analysis
=========================

This project provides an analysis of an online sales dataset using SQL views. The script **SQLQUERY.sql** is used to create views for generating key business insights such as monthly revenue, order volume, top products, payment preferences, and more.

Files Included
--------------

*   **SQLQUERY.sql**: Contains the main SQL script that includes:
    
    *   Database creation and table queries
        
    *   View creation queries to generate analytical insights
        
*   **Online Sales Data.csv**: An dataset used for analysis.
    
*   **RESULTS TABLES.pdf**: A summary of the results of the analytical views.
    

Database: online\_sales
-----------------------

The script starts by creating and using the online\_sales database. Be sure to execute the database creation query first before running any views.

SQL Views Created
-----------------

The following views are created to provide insights into different aspects of the sales data:

1.  **vw\_Month\_Extraction**: Extracts the month and name from the order date.
    
2.  **vw\_Monthly\_Revenue**: Displays revenue by month and year.
    
3.  **vw\_Monthly\_Order\_Volume**: Shows the number of orders per month.
    
4.  **vw\_Monthly\_Revenue\_Volume**: Combines revenue and order volume in one view.
    
5.  **vw\_Top\_5\_Products**: Displays the top 5 products based on revenue.
    
6.  **vw\_Revenue\_By\_Category**: Breaks down the revenue by product category.
    
7.  **vw\_Payment\_Methods**: Shows the count and revenue by payment method.
    
8.  **vw\_Revenue\_By\_Region**: Displays regional revenue distribution.
    

How to Run
----------

1.  Open your SQL Server or any compatible SQL environment.
    
2.  Run the contents of **SQLQUERY.sql** to create the views.
    
3.  Query the views using SELECT \* FROM view\_name; to see the results.
