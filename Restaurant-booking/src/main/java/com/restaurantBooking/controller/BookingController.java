package com.restaurantBooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.web.bind.annotation.RequestBody;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;    
import org.springframework.web.bind.annotation.RestController;

import com.restaurantBooking.service.BookingService;
import com.restaurantBooking.models.Booking;  

@RestController
public class BookingController {
	@Autowired
	private BookingService bookingService;
	
	@RequestMapping("/get-booking")
	public List<Booking> getBooking(){
		return bookingService.getAllBookings();
	}
	
	@RequestMapping("/")
    String home() {
        return "Hello, World!";
    }
	
	@RequestMapping(value="/add-booking", method=RequestMethod.POST)    
	public void addBooking(@RequestBody Booking booking)  
	{    
		bookingService.addBooking(booking);    
	}       
}    