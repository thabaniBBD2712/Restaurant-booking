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
	
	@Column(name = "bookingName")
	private String bookingName;
	@Column(name = "email")
	private String email;
	@Column(name = "noOfParticipants")
	private int numberOfParticipants;
	@Column(name = "bookingDateTime")
	private LocalDate bookingDateTime;
	@Column(name = "statusId")
	private int statusId;
	@Column(name = "seatingId")
	private int seatingId;
	
	@Override
	  public String toString() {
	    return String.format(
	        "Customer[id=%d, bookingName='%s', email='%s', numberOfParticipants='%s', bookingDateTime='%s', statusId='%s', seatingId='%s']",
	        id, bookingName, email, numberOfParticipants, bookingDateTime, statusId, seatingId);
	  }

	public int getId() {
		return id;
	}

	public String getBookingName() {
		return bookingName;
	}

	public String getEmail() {
		return email;
	}

	public int getNumberOfParticipants() {
		return numberOfParticipants;
	}

	public String getBookingDateTime() {
		return bookingDateTime.toString();
	}

	public int getStatusId() {
		return statusId;
	}

	public int getSeatingId() {
		return seatingId;
	}
}
