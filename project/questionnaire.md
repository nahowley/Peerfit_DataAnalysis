## Reservation Data Analysis Project Questionnaire

### Project Data Points - Please see corresponding sql files for additional detail

1. Across all reservation partners for January & February, how many completed reservations occurred?

200 completed reservations occurred


2. Which studio has the highest rate of reservation abandonment (did not cancel but did not check-in)?

crossfit-control-jacksonville-beach with 4 reservations abandoned


3. Which fitness area (i.e., tag) has the highest number of completed reservations for February?

yoga with 12 completed reservations


4. How many members completed at least 1 reservation and had no more than 1 cancelled reservation in January?

18 members
This count may be slightly off due to the possibility that members could have recorded class reservations and cancelations at studios that used clubready and studios that used mindbody.


5. At what time of day do most users book classes? Attend classes? (Morning = 7-11 AM, Afternoon = 12-4 PM, Evening = 5-10 PM)

Most users book classes in the morning, 133 reservations booked. Most users attend classes in the morning, 106 classes attended.

Afternoons are the next busiest with 51 reservations booked and 30 classes attended.
Evenings are the least busy with 16 classes booked and 0 attended.


6. How many confirmed completed reservations did the member (ID) with the most reserved classes in February have?

Member_id 4 completed 6 reservations


7. Write a query that unions the `mindbody_reservations` table and `clubready_reservations` table as cleanly as possible.

See Question 7 sql file

### Project Discussion
1. What opportunities do you see to improve data storage and standardization for these datasets?

2. What forecasting opportunities do you see with a dataset like this and why?

3. What other data would you propose we gather to make reporting/forecasting more robust and why?
