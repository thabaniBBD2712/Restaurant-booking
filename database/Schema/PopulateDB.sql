USE [RestaurantBooking]
GO

--USE [master]
--GO

INSERT INTO BookingStatus(id, statusDescription)
VALUES
(0, 'Pending'),
(1, 'Accepted'),
(2, 'Rejected'),
(3, 'Cancelled'),
(4, 'Expired');
GO

--select * from BookingStatus

INSERT INTO Location(id, locationDescription)
Values
(0, 'Inside'),
(1, 'Outside');
GO

--select * from Location

INSERT INTO SeatingType(id, seatingTypeDescription)
Values
(0, '2 Seater'),
(1, '4 Seater'),
(2, '6 Seater');
GO

--select * from SeatingType

INSERT INTO Seating(id, seatingTypeId, locationId)
VALUES
(0, 0, 0),
(1, 0, 1), --2
(2, 1, 0),
(3, 1, 1), --4
(4, 2, 0),
(5, 2, 1); --6
GO

--select * from Seating

INSERT INTO Bookings(id, bookingName, email, noOfParticipants, bookingDateTime, statusId, seatingId)
VALUES
(0, 'Emily', 'emily@gmail.com', 3, CAST('2022-03-20T10:30:00.000' AS DateTime), 1, 2),
(1, 'Liam', 'liam@gmail.com', 2, CAST('2022-03-30T18:00:00.000' AS DateTime), 1, 1),
(2, 'Botha', 'botha@gmail.com', 4, CAST('2022-03-11T18:30:00.000' AS DateTime), 4, 3),
(3, 'Billy', 'botha@gmail.com', 2, CAST('2022-03-12T19:00:00.000' AS DateTime), 4, 3),
(4, 'Mike', 'botha@gmail.com', 6, CAST('2022-03-19T20:00:00.000' AS DateTime), 0, 4),
(5, 'Steve', 'botha@gmail.com', 6, CAST('2022-03-21T16:00:00.000' AS DateTime), 0, 4),
(6, 'Andrew', 'botha@gmail.com', 4, CAST('2022-03-24T13:30:00.000' AS DateTime), 0, 3),
(7, 'Betty', 'botha@gmail.com', 4, CAST('2022-03-24T12:15:00.000' AS DateTime), 0, 2),
(8, 'Maxine', 'maxine@gmail.com', 6, CAST('2022-03-23T19:00:00.000' AS DateTime), 0, 5);
GO
select * from Bookings

--SELECT s.id AS seatingId, st.seatingTypeDescription as SeatingType, l.locationDescription as LocationDescription
--FROM Seating s
--INNER JOIN SeatingType st ON s.seatingTypeId = st.id
--INNER JOIN Location l ON s.locationId = l.id
--LEFT JOIN Bookings b ON b.seatingId = s.id AND b.statusId != 1
--GO
