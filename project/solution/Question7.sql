/*club_readyreservations selection, while also inputing null columns to match with second table*/
SELECT  member_id, 
		id, 
		studio_key as studio, 
		class_tag, 
		instructor_full_name as instructor, 
		level, 
		reserved_for AS reservation_day, 
        null AS Studio_address,
		signed_in_at AS signed_in,
        null AS viewed_at,
        null AS reserved_at,
		canceled, 
        null AS canceled_at

FROM clubready_reservations

/*Union all used in order to allow for duplicates between the two tables. Less taxing on the query as well. */
UNION ALL

SELECT  member_id,
		id,
		studio_key as studio,
		class_tag,
        null as instructor,
        null as level,
		class_time_at AS reservation_day,
        /* Probably not the best idea to combine all street data into one but it does look the best at the end of the day. Ideally, we'd probably want to leave at least street out for future searching*/
        CONCAT(studio_address_street, ' ',studio_address_city,' ',studio_address_state,' ',studio_address_zip)  AS Studio_address,
		checked_in_at AS signed_in,
		viewed_at,    
		reserved_at,
		null as canceled,
		canceled_at

FROM mindbody_reservations

/*Order initially by reservation_day, assuming that is probably the most favorable filter to use when analyzing data over time. Further ordered by signed in time to show order of people signing in throughout a given day.*/
ORDER BY Reservation_day,signed_in;

/*This table does not combine canceled and canceled_at columns accross the clubready_reservations and the mindbody_reservations*/