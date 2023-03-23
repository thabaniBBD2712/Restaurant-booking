package com.restaurantBooking.models;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "bookings")
public class Booking {
	private @Id @GeneratedValue(strategy=GenerationType.IDENTITY) int id;
	
	@Column(name = "booking_name")
	private String bookingName;
	@Column(name = "email")
	private String email;
	@Column(name = "no_of_participants")
	private int numberOfParticipants;
	@Column(name = "booking_date_time")
	private LocalDateTime bookingDateTime;
	@Column(name = "status_id")
	private int statusId;
	@Column(name = "seating_id")
	private int seatingId;
	
	protected Booking() {}

	@Override
	  public String toString() {
	    return String.format(
	        "Customer[id=%d, bookingName='%s', email='%s', numberOfParticipants='%s', bookingDateTime='%s', statusId='%s', seatingId='%s']",
	        id, bookingName, email, numberOfParticipants, bookingDateTime, statusId, seatingId);
	  }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookingName() {
		return bookingName;
	}

	public void setBookingName(String bookingName) {
		this.bookingName = bookingName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getNumberOfParticipants() {
		return numberOfParticipants;
	}

	public void setNumberOfParticipants(int numberOfParticipants) {
		this.numberOfParticipants = numberOfParticipants;
	}

	public LocalDateTime getBookingDateTime() {
		return bookingDateTime;
	}

	public void setBookingDateTime(LocalDateTime bookingDateTime) {
		this.bookingDateTime = bookingDateTime;
	}

	public int getStatusId() {
		return statusId;
	}

	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}

	public int getSeatingId() {
		return seatingId;
	}

	public void setSeatingId(int seatingId) {
		this.seatingId = seatingId;
	}
}
