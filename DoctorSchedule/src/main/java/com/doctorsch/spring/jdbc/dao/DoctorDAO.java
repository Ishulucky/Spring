package com.doctorsch.spring.jdbc.dao;

import java.util.List;

import com.doctorsch.spring.jdbc.model.DoctorDetails;
import com.doctorsch.spring.jdbc.model.UserDetails;

public interface DoctorDAO {

	// boolean createDoctorSchedule(Doctor d);
	DoctorDetails getDoctorById(Integer doctorid);

	UserDetails getUserByUsername(String username);

	List<DoctorDetails> getAllDoctorDetails();

}
