/*5. At what time of day do most users book classes? Attend classes? (Morning = 7-11 AM, Afternoon = 12-4 PM, Evening = 5-10 PM);*/

Select
count(*)
from mindbody_reservations
Where time(class_time_at) between '07:00:00' and '11:00:00';

Select
count(*)
from mindbody_reservations
Where time(class_time_at) between '12:00:00' and '15:00:00';

Select
count(*)
from mindbody_reservations
Where time(class_time_at) between '16:00:00' and '22:00:00';

Select
count(*)
from mindbody_reservations
Where time(class_time_at) between '07:00:00' and '11:00:00'
or time(class_time_at) between '12:00:00' and '15:00:00'
or time(class_time_at) between '16:00:00' and '22:00:00';

Select
count(*)
CASE
    WHEN time(class_time_at) between '07:00:00' and '11:00:00' then 'Morning'
	When time(class_time_at) between '12:00:00' and '15:00:00' then 'Afternoon'
	When time(class_time_at) between '16:00:00' and '22:00:00' then 'Evening'
    ELSE 'Dont_Know'
END
from mindbody_reservations;