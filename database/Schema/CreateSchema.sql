USE [master]
GO

-- Don't touch this
DECLARE @safetyTrigger bit = 0;
IF @safetyTrigger = 1
	DROP DATABASE IF EXISTS [RestaurantBooking]
GO

CREATE DATABASE [RestaurantBooking]
GO

USE [RestaurantBooking]
GO

CREATE TABLE [Location] (
	id integer NOT NULL,
	locationDescription varchar(255) NOT NULL,
  CONSTRAINT [PK_LOCATION] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

CREATE TABLE [BookingStatus] (
	id integer NOT NULL,
	statusDescription varchar(255) NOT NULL,
  CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)

GO
CREATE TABLE [SeatingType] (
	id integer NOT NULL,
	seatingTypeDescription varchar(255) NOT NULL,
  CONSTRAINT [PK_SEATINGTYPE] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

CREATE TABLE [Seating] (
	id integer NOT NULL,
	seatingTypeId integer NOT NULL,
	locationId integer NOT NULL,
	CONSTRAINT [FK_Seating_Type_Id] FOREIGN KEY(seatingTypeId) REFERENCES [SeatingType]([id]),
	CONSTRAINT [FK_Location_Id] FOREIGN KEY(locationId) REFERENCES [Seating]([id]),
  CONSTRAINT [PK_SEATING] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

CREATE TABLE [Bookings] (
	id integer NOT NULL,
	bookingName varchar(50) NOT NULL,
	email varchar(255) NOT NULL,
	noOfParticipants integer NOT NULL,
	bookingDateTime datetime NOT NULL,
	statusId integer NOT NULL,
	seatingId integer NOT NULL,
  CONSTRAINT [FK_Status_Id] FOREIGN KEY([statusId]) REFERENCES [BookingStatus]([id]),
  CONSTRAINT [FK_Seating_Id] FOREIGN KEY([seatingId]) REFERENCES [Seating]([id]),
  CONSTRAINT [PK_BOOKINGS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO





