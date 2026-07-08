-- Sql Retail Sales Analysis - P1 
create database sql_project_1;

-- select the databse 
use sql_project_1;

-- Create a Table 
drop table if exists retail_sales;

create table
    retail_sales (
        transactions_id INT primary key,
        sale_date date,
        sale_time time,
        customer_id int,
        gender varchar(10),
        age int,
        category varchar(15),
        quantiy int,
        price_per_unit float,
        cogs float,
        total_sale float
    );

-- Check that the create is created or not 
select
    *
from
    retail_sales;

--  Check the Cound of data table
-- select count(*) from retail_sales; 
-- Select NULL value from the table retail_sales
select
    *
from
    retail_sales
where
    transactions_id is null
    or sale_date is null
    or sale_time is null
    or customer_id is null
    or gender is null
    or age is null
    or category is null
    or quantiy is null
    or price_per_unit is null
    or cogs is null
    or total_sale is null;

-- Delete NULL value from the table retail_sales
delete from retail_sales
where
    transactions_id is null
    or sale_date is null
    or sale_time is null
    or customer_id is null
    or gender is null
    or age is null
    or category is null
    or quantiy is null
    or price_per_unit is null
    or cogs is null
    or total_sale is null;

--  Data Exploration
-- How many sales we have ?
select
    count(*) as total_sale
from
    retail_sales;

-- How many unique customers we have ?
select
    count(distinct customer_id)
from
    retail_sales;

-- Total number of unique catagory we have
select distinct
    category
from
    retail_sales;

-- Key Problem 
-- Q.1 Write a SQL query to retrieve all columns adn count for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
-- Q.1 Write a SQL query to retrieve all columns adn count for sales made on '2022-11-05'
select
    count(*)
from
    retail_sales
where
    sale_date = '2022-11-05';

select
    *
from
    retail_sales
where
    sale_date = '2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
select
    *
from
    retail_sales
where
    category = 'Clothing'
    and DATE_FORMAT (sale_date, '%Y-%m') = '2022-11'
    and quantiy >= 4;

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
select
    category,
    sum(total_sale) as net_sale,
    count(*) as total_orders
from
    retail_sales
group by
    1;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
select
    round(avg(age))
from
    retail_sales
where
    category = 'Beauty';

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
select
    *
from
    retail_sales
where
    total_sale > 1000;

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
select
    category,
    gender,
    count(*) as total_trans
from
    retail_sales
group by
    category,
    gender;

-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
select
    year (sale_date),
    month (sale_date),
    sum(total_sale) as total_sale,
    avg(total_sale) as total_sale_in_average
from
    retail_sales
group by
    1,
    2
order by
    1,
    2,
    3 desc