package com.restaurantBooking.repository;
import org.springframework.data.repository.CrudRepository;

import com.restaurantBooking.models.Booking;  

public interface BookingRepository extends CrudRepository<Booking, String> {

}
