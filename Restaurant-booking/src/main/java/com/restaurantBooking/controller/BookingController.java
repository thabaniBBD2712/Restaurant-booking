package com.restaurantBooking.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;    
import org.springframework.web.bind.annotation.RestController;

import com.restaurantBooking.service.BookingService;
import com.restaurantBooking.models.Booking;
import com.restaurantBooking.repository.BookingRepository;  

@RestController
public class BookingController {
	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private BookingRepository bookingRepository;
	
	@RequestMapping("/hello")
    String home() {
        return "Hello, World!";
    }
	
	@RequestMapping(value="/get-booking", method=RequestMethod.GET)
	public List<Booking> getBooking(){
		return bookingService.getAllBookings();
	}

	
	@RequestMapping(value="/add-booking", method=RequestMethod.POST)    
	public ResponseEntity<Booking> addBooking(@RequestBody Booking booking)  
	{    
		try {
			Booking newBooking = bookingService.addBooking(booking);    
			return new ResponseEntity<Booking>(newBooking, HttpStatus.OK)
		}
		catch (DataAccessException e) {
			return new ResponseEntity<Booking>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}       
	
	@RequestMapping(value="/update-booking/{id}", method=RequestMethod.PUT)
	public ResponseEntity<Booking> updateBookingStatus(@PathVariable("id") int id, @RequestBody Booking booking){
		Optional<Booking> bookingDataOptional = bookingRepository.findById(String.format("%d", id));
		
		if(bookingDataOptional.isPresent())
		{
			Booking bookingTemp = bookingDataOptional.get();
			bookingTemp.setBookingName(booking.getBookingName());
			bookingTemp.setEmail(booking.getEmail());
			bookingTemp.setNumberOfParticipants(booking.getNumberOfParticipants());
			bookingTemp.setBookingDateTime(booking.getBookingDateTime());
			bookingTemp.setStatusId(booking.getStatusId());
			bookingTemp.setSeatingId(booking.getSeatingId());
			return new ResponseEntity<Booking>(bookingRepository.save(bookingTemp), HttpStatus.OK);
		}
		else {
			return new ResponseEntity<Booking>(HttpStatus.NOT_FOUND);
		}
	}
}    