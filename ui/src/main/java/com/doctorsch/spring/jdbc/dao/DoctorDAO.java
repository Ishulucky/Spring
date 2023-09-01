package com.doctorsch.spring.jdbc.dao;

import java.util.List;

import com.doctorsch.spring.jdbc.model.Doctor;
import com.doctorsch.spring.jdbc.model.DoctorDetails;

public interface DoctorDAO {

	boolean createDoctorSchedule(Doctor d);

	List<DoctorDetails> getAllDoctorDetails();

}
