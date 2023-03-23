package com.restaurantBooking.models;

import java.util.NoSuchElementException;

import com.restaurantBooking.constants.sqlConstants;

public class UpdateBookingStatus {
	private int id;
	private String newStatus;

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getNewStatus() {
		return newStatus;
	}



	public void setNewStatus(String newStatus) {
		this.newStatus = newStatus;
	}

	public int getNewStatusIntegerValue() {
		switch(this.newStatus) {
		case sqlConstants.PendingStatus:
			return sqlConstants.intPendingStatus;
		case sqlConstants.AcceptedStatus:
			return sqlConstants.intAcceptedStatus;
		case sqlConstants.RejectedStatus:
			return sqlConstants.intRejectedStatus;
		case sqlConstants.CancelledStatus:
			return sqlConstants.intCancelledStatus;
		case sqlConstants.ExpiredStatus:
			return sqlConstants.intExpiredStatus;
		}
		throw new NoSuchElementException(newStatus + " - is not a valid status");
	}
}
