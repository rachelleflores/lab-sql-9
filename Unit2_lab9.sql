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

# Continued in the jupyter notebook file : Unit2_lab9_pt2