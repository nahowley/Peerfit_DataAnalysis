/*How many confirmed completed reservations did the member (ID) with the most reserved classes in February have?*/

SELECT 
    Member_id, COUNT(signed_in_at IS NOT NULL)
FROM
    clubready_reservations
WHERE
    reserved_for BETWEEN '2018-02-01 00:00:00' AND '2018-03-01 00:00:00'
GROUP BY Member_id
ORDER BY COUNT(signed_in_at IS NOT NULL) ASC;

SELECT 
    Member_id, COUNT(checked_in_at IS NOT NULL)
FROM
    mindbody_reservations
WHERE
    class_time_at BETWEEN '2018-02-01 00:00:00' AND '2018-03-01 00:00:00'
GROUP BY Member_id
ORDER BY COUNT(checked_in_at IS NOT NULL) desc;

/*These functions work. They return two tables instead of one though, which is less convenient.
From looking at both, it is possible to determine that member_id 4 has the highest number of completed reservations in February.
Member_id 4 completed 6 reservations*/