-- get booking by id
-- CREATE PROCEDURE GetAllProducts()
-- BEGIN
-- 	SELECT *  FROM products;
-- END

-- booking view
create view view_allBookings as
select b.id, b.booking_name, b.no_of_participants, b.booking_date_time, st.status_description, l.location_description
from bookings b
inner join (seating s
				inner join location l on l.id = s.location_id)
			on b.id = s.id
inner join bookingstatus st on b.status_id = st.id;

select * from view_allBookings;
