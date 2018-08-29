/*2. Which studio has the highest rate of reservation abandonment (did not cancel but did not check-in)?*/

SELECT 
    studio_key, COUNT(*) AS reservations_abandoned
FROM
    clubready_reservations
WHERE
    Signed_in_at IS NULL AND canceled = 'f'
GROUP BY studio_key
ORDER BY COUNT(*) DESC;
    
SELECT 
    studio_key, COUNT(*) AS reservations_abandoned
FROM
    mindbody_reservations
WHERE
    Checked_in_at IS NULL
        AND canceled_at IS NULL
GROUP BY studio_key
ORDER BY COUNT(*) DESC;

/*Ordered in descending order so that the studios with the highest rates of reservation abandonment would be at the top of the returned table.
I originally ran the code for each table separately which is not ideal for gaining a full understanding of the data.
To address this, I compared across both tables. 
You can also use a query to run against the clubready and mindbody tables together, with a JOIN or UNION, similar to what you see in Question 7. 

The studio with the higest rate of reservation abandonment is crossfit-control-jacksonville-beach with 4 reservations abandoned.*/
