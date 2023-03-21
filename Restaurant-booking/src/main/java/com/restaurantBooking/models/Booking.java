package com.restaurantBooking.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Bookings")
public class Booking {
	private @Id @GeneratedValue int id;
	
	@Column(name = "bookingName")
	private String bookingName;
	@Column(name = "email")
	private String email;
	@Column(name = "noOfParticipants")
	private int numberOfParticipants;
	@Column(name = "bookingDateTime")
	private String bookingDateTime;
	@Column(name = "statusId")
	private int statusId;
	@Column(name = "seatingId")
	private int seatingId;
}
