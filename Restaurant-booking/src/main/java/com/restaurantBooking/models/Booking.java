package com.restaurantBooking.models;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "bookings")
public class Booking {
	private @Id @GeneratedValue int id;
	
	@Column(name = "booking_name")
	private String bookingName;
	@Column(name = "email")
	private String email;
	@Column(name = "no_of_participants")
	private int numberOfParticipants;
	@Column(name = "booking_date_time")
	private LocalDate bookingDateTime;
	@Column(name = "status_id")
	private int statusId;
	@Column(name = "seating_id")
	private int seatingId;
}
