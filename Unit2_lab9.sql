# Unit 2 Lab 9
USE sakila;

## Instructions
# In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.
-- 1. Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

DROP TABLE IF EXISTS rentals_may;
CREATE TABLE rentals_may (
	SELECT *
    FROM rental
    WHERE EXTRACT(MONTH FROM (rental_date)) = 5
    );
    
-- Check the number of rentals for each customer for May.
SELECT COUNT(*)
FROM rentals_may;

-- 2. Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

DROP TABLE IF EXISTS rentals_june;
CREATE TABLE rentals_june AS (
	SELECT *
    FROM rental
    WHERE EXTRACT(MONTH FROM (rental_date)) = 6
    );

-- Check the number of rentals for each customer for June.
SELECT COUNT(*)
FROM rentals_june;

-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

Check the number of rentals for each customer for May

Check the number of rentals for each customer for June

Hint: You can store the results from the two queries in two separate dataframes.

Write a function that checks if customer borrowed more or less films in the month of June as compared to May.

Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the merge function.