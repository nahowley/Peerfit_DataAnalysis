/*1. Across all reservation partners for January & February, how many completed reservations occurred?*/
        
SELECT 
    COUNT(*) AS completed_reservations
FROM
    clubready_reservations
WHERE
    signed_in_at BETWEEN '2018-01-01 00:00:00' AND '2018-03-01 00:00:00';

SELECT 
    COUNT(*) AS completed_reservations
FROM
    mindbody_reservations
WHERE
    checked_in_at BETWEEN '2018-01-01 00:00:00' AND '2018-03-01 00:00:00';
    
/* I originally ran the code for each table separately which is not ideal for gaining a full understanding of the data for either returned table.
To address this, I compared across both tables. 
You can also use a query to run against the queries together, with a JOIN or UNION, similar to what you see in Question 7 

Across all reservation partners from January & February, 200 completed reservations occured.*/