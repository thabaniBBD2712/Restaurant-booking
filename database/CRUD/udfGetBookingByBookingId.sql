USE [RestaurantBooking]
GO

--USE [master]
--GO

--get booking by id
CREATE OR ALTER FUNCTION [dbo].[uspGetBookingById](@bookingId int)
RETURNS @query Table (id int, bookingName varchar, noOfParticipants int, bookingDateTime DateTime, statusDescription varchar, locationDescription varchar),
AS
BEGIN
SELECT b.id, b.bookingName, b.noOfParticipants, b.bookingDateTime, st.statusDescription, l.locationDescription
FROM Bookings b
INNER JOIN (Seating s
				INNER JOIN Location l ON l.id = s.locationId)
			ON b.id = s.id
INNER JOIN BookingStatus st ON b.statusId = st.id
WHERE b.id = @bookingId
RETURN
END

SELECT * FROM uspGetBookingById(3) GO

--update booking
CREATE OR ALTER PROCEDURE [dbo].[updateBooking]
@statusNew string,
@statusOld int,
@bookingId int, 