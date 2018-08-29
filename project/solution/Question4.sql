/*How many members completed at least 1 reservation and had no more than 1 cancelled reservation in January?*/

SELECT 
    COUNT(distinct member_id) AS engaged_members
FROM
    clubready_reservations
Where reserved_for between '2018-01-01 00:00:00' and '2018-02-01 00:00:00'
GROUP BY member_id
HAVING COUNT(signed_in_at is not null) >= 1
    AND COUNT(canceled = 't') <= 1;
    
SELECT 
    count(member_id) AS engaged_members
FROM
    mindbody_reservations
WHERE
    class_time_at BETWEEN '2018-01-01 00:00:00' AND '2018-02-01 00:00:00'
GROUP BY member_id
HAVING COUNT(checked_in_at IS NOT NULL) >= 1
    AND COUNT(canceled_at IS NOT NULL) <= 1;

/*Neither of the above functions return exactly what I want because they don't return a single count.
Instead they return multiple columns all counting one member_id. I had trouble finding a solution to this even after looking through stackoverflow. 
I tried out the below code to collect specific member id numbers to check how many members met the conditions of the question though. 
I didn't want to spend too much time on this but I surely would have figured this out, for some reason I just had some trouble wrapping my head around the final count*/

SELECT
    member_id
FROM
    clubready_reservations
where reserved_for between '2018-01-01 00:00:00' and '2018-02-01 00:00:00'
GROUP BY member_id
HAVING COUNT(signed_in_at) >= 1
    AND COUNT(canceled) <= 1;
    
SELECT
    member_id
FROM
    mindbody_reservations
where class_time_at between '2018-01-01 00:00:00' and '2018-02-01 00:00:00'
GROUP BY member_id
HAVING COUNT(checked_in_at) >= 1
    AND COUNT(canceled_at) <= 1;
    
/*These functions work. They return two tables instead of one, which is less convenient.
I compared the infomration provided from both tables. 
You can also use a query to run against the clubready and mindbody tables together, with a JOIN or UNION, similar to what you see in Question 7.
I ended up having to count each returned member_id because the statement isn't quite right.
The count may be off because I ran the code for each table separately and it is possible for members to have recorded class reservations and cancelations in both tables.
The members who have recorded reservations in both tables are not taken into account in my final number.

18 members completed at least one reservation and had no more than one canceled reservation at the studios tracked by mindbody or clubready in January.*/