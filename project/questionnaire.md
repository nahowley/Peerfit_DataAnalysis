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


In order to standardize the data so it is easier to compare across systems (clubready and mindbody) and to merge into one table, I would recommend:
- giving all columns containing the same data the same title (i.e. identifying signed_in_at and checked_in_at  - or -  reserved_for and class_time_at with the same column names)
- collecting data that represents the same concept using the same value types (i.e. cancelations need to be more standardized either by having both canceled (t or f) and canceled_at (time), or one or the other)
- deciding what data should be collected across both tables that is not currently (i.e. collect instructor_full_name across both systems instead of collecting it in clubready but not mindbody, and/or start collecting completely new data in both systems that is currently not being collected by either system, e.g. member email)



2. What forecasting opportunities do you see with a dataset like this and why?


- Determining the time of day classes are most popular to predict what classes are most likely to fill up/what time ranges need more class options.
- Determining what day/time people are most likely to cancel to predict future cancelations and potentially counteract them with reminders or some other technique.
- Using trends in class category and studio engagement to predict future engagement.
- For the data set where you have addresses recorded, monitoring trends in regional engagement with classes to predict future regional engagement with classes. Could be used to determine where there may be a higher demand for classes in order to seek out more partner fitness studios in that area.
- Looking at trends in individual users to spot chronic class cancelers and potentially offer additional incentive and reminders, or keeping their spot in the class free until check in vs immediately after registration.
- etc.



3. What other data would you propose we gather to make reporting/forecasting more robust and why?


Deciding on additional data points to collect is a matter of weighing the value of the potential for additional insights against the cost of collecting, storing, and sorting through additional data.


I would say the most accurate answer is it depends a lot on the goals of Peerfit and your partners. From what I know about your company, I would say collecting more information about the social aspects of attending fitness classes through Peerfit. For instance, collecting information on what company/department people work for to see if there is some sort of viral social effect as more people attend classes.


The information on studio address could be beneficial if collected for all data sets/classes. The value of the addresses could also increase if compared to the addresses of partnering companies and the members’ home addresses because these addresses could be mapped and compared in order to gain a better understanding of how close a studio needs to be in order for a member to consider engaging with a class there. If results can be drawn from the address data, it could also be used by sales staff to find partner studios within an acceptable range of each new company that signs on with Peerfit.
