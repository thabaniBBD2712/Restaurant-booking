package com.restaurantBooking.service;
import java.util.List;    
import java.util.ArrayList;    
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import com.restaurantBooking.models.Booking;

import com.restaurantBooking.repository.BookingRepository;  

@Service
public class BookingService {
	@Autowired
	private BookingRepository bookingRepository;
	
//	public List<Booking> getAllBookings()  
//	{    
//	List<Booking>bookings = new ArrayList<>();    
//	bookingRepository.findAll().forEach(bookings::add);    
//	return bookings;
//	} 
	
	@Query("SELECT b FROM Bookings b")
	public List<Booking> getAllBookings()  
	{    
		List<Booking>bookings = new ArrayList<>();    
		bookingRepository.findAll().forEach(bookings::add);    
		return bookings;
	}
	
	public Booking addBooking(Booking booking)  
	{    
		return bookingRepository.save(booking);
	}    
}
