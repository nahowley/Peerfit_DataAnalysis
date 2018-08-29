/*3. Which fitness area (i.e., tag) has the highest number of completed reservations for February?*/

SELECT 
    class_tag AS fitness_area,
    COUNT(*) AS completed_reservations
FROM
    mindbody_reservations
WHERE
    checked_in_at IS NOT NULL
        AND class_time_at BETWEEN '2018-02-01 00:00:00' AND '2018-03-01 00:00:00'
GROUP BY class_tag
ORDER BY completed_reservations DESC;

SELECT 
    class_tag AS fitness_area,
    COUNT(*) AS completed_reservations
FROM
    clubready_reservations
WHERE
    signed_in_at IS NOT NULL
        AND reserved_for BETWEEN '2018-02-01 00:00:00' AND '2018-03-01 00:00:00'
GROUP BY class_tag
ORDER BY completed_reservations DESC;

/*Ordered in descending order so that so that the fitness area with the highest number of completed reservations would be at the top of the returned table.
I originally ran the code for each table separately which is not ideal for gaining a full understanding of the data.
To address this, I compared across both tables. 
You can also use a query to run against the clubready and mindbody tables together, with a JOIN or UNION, similar to what you see in Question 7. 

The fitness area with the highest number of completed reservations in February is yoga with 12 completed reservations.*/