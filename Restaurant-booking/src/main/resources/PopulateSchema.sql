INSERT INTO bookingstatus(status_description)
VALUES
('Pending'),
('Accepted'),
('Rejected'),
('Cancelled'),
('Expired');

-- select * from BookingStatus;

INSERT INTO location(location_description)
VALUES
('Inside'),
('Outside');


INSERT INTO seatingtype(seating_type_description)
Values
('2 Seater'),
('4 Seater'),
('6 Seater');

-- select * from SeatingType;-- 

INSERT INTO seating(seating_type_id, location_id)
VALUES
(1, 1),
(1, 2), 
(2, 1),
(2, 2), 
(3, 1),
(3, 2); 

-- select * from seating;

INSERT INTO bookings(booking_name, email, no_of_participants, booking_date_time, status_id, seating_id)
VALUES
('Emily', 'emily@gmail.com', 3, CAST('2022-03-20T10:30:00.000' AS DateTime), 2, 3),
('Liam', 'liam@gmail.com', 2, CAST('2022-03-30T18:00:00.000' AS DateTime), 2, 2),
('Botha', 'botha@gmail.com', 4, CAST('2022-03-11T18:30:00.000' AS DateTime), 5, 4),
('Billy', 'botha@gmail.com', 2, CAST('2022-03-12T19:00:00.000' AS DateTime), 5, 4),
('Mike', 'botha@gmail.com', 6, CAST('2022-03-19T20:00:00.000' AS DateTime), 1, 5),
('Steve', 'botha@gmail.com', 6, CAST('2022-03-21T16:00:00.000' AS DateTime), 1, 5),
('Andrew', 'botha@gmail.com', 4, CAST('2022-03-24T13:30:00.000' AS DateTime), 1, 4),
('Betty', 'botha@gmail.com', 4, CAST('2022-03-24T12:15:00.000' AS DateTime), 1, 3),
('Maxine', 'maxine@gmail.com', 6, CAST('2022-03-23T19:00:00.000' AS DateTime), 1, 6);

-- select * from bookings;
