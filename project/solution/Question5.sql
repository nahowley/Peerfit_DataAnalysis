/*5. At what time of day do most users book classes? Attend classes? (Morning = 7-11 AM, Afternoon = 12-4 PM, Evening = 5-10 PM);*/


/*I struggled with this question. The tables generated below do not provide a clean answer, but they do provide enough information to answer the question

Most users book classes in the morning, 133 reservations booked. Most users attend classes in the morning, 106 classes attended.
Afternoons are the next busiest with 51 reservations booked and 30 classes attended.
Evenings are the least busy with 16 classes booked and 0 attended.*/

Select
count(*) as morning_classes
from mindbody_reservations
Where time(class_time_at) between '07:00:00' and '11:00:00';

Select
count(*) as afternoon_classes
from mindbody_reservations
Where time(class_time_at) between '12:00:00' and '15:00:00';

Select
count(*) as evening_classes
from mindbody_reservations
Where time(class_time_at) between '16:00:00' and '22:00:00';

Select
count(*)
from mindbody_reservations
Where time(class_time_at) between '07:00:00' and '11:00:00'
or time(class_time_at) between '12:00:00' and '15:00:00'
or time(class_time_at) between '16:00:00' and '22:00:00';
/*I ran this to double check that all reservations were accounted for*/


Select
count(*) as morning_classes
from clubready_reservations
Where time(reserved_for) between '07:00:00' and '11:00:00';

Select
count(*) as afternoon_classes
from clubready_reservations
Where time(reserved_for) between '12:00:00' and '15:00:00';

Select
count(*) as evening_classes
from clubready_reservations
Where time(reserved_for) between '16:00:00' and '22:00:00';

Select
count(*)
from clubready_reservations
Where time(reserved_for) between '07:00:00' and '11:00:00'
or time(reserved_for) between '12:00:00' and '15:00:00'
or time(reserved_for) between '16:00:00' and '22:00:00';
/*I ran this to double check that all reservations were accounted for*/

Select
count(*)
CASE
    WHEN time(class_time_at) between '07:00:00' and '11:00:00' then 'Morning'
	When time(class_time_at) between '12:00:00' and '15:00:00' then 'Afternoon'
	When time(class_time_at) between '16:00:00' and '22:00:00' then 'Evening'
    ELSE 'Dont_Know'
END
from mindbody_reservations;
/*This was something I put together in an attempt to get a clean table. Didn't figure out how to get it quite right.
This can't run but I thought it might provide an idea of what I was going for.*/


/*More work*/
Select
count(*) as morning_classes
from mindbody_reservations
Where time(checked_in_at) between '06:00:00' and '11:00:00';

Select
count(*) as afternoon_classes
from mindbody_reservations
Where time(checked_in_at) between '11:00:01' and '15:00:00';

Select
count(*) as evening_classes
from mindbody_reservations
Where time(checked_in_at) between '15:00:01' and '22:00:00';

Select 
count(*)
from mindbody_reservations
where checked_in_at is not null;

Select
count(*)
from mindbody_reservations
Where time(checked_in_at) between '06:00:00' and '11:00:00'
or time(checked_in_at) between '11:00:01' and '15:00:00'
or time(checked_in_at) between '15:00:01' and '22:00:00';
/*I ran the two above statements to double check that all reservations were accounted for*/


Select
count(*) as morning_classes
from clubready_reservations
Where time(signed_in_at) between '06:00:00' and '11:00:00';

Select
count(*) as afternoon_classes
from clubready_reservations
Where time(signed_in_at) between '11:00:01' and '15:00:00';

Select
count(*) as evening_classes
from clubready_reservations
Where time(signed_in_at) between '15:00:01' and '22:00:00';

Select 
count(*)
from clubready_reservations
where signed_in_at is not null;

Select
count(*)
from clubready_reservations
Where time(signed_in_at) between '06:00:00' and '11:00:00'
or time(signed_in_at) between '11:00:01' and '15:00:00'
or time(signed_in_at) between '15:00:01' and '22:00:00';
/*I ran the two aboce statements to double check that all reservations were accounted for*/