package com.doctorsch.spring.jdbc.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class DoctorMapper implements RowMapper<DoctorDetails> {

	public DoctorDetails mapRow(ResultSet resultSet, int i) throws SQLException {

		DoctorDetails d = new DoctorDetails();
		d.setDoctorid(resultSet.getInt(1));
		d.setFullname(resultSet.getString(2));
		d.setSpecializationid(resultSet.getInt(3));
		d.setQualification(resultSet.getString(4));
		d.setExperience(resultSet.getInt(5));
		d.setDesignation(resultSet.getString(6));
		d.setPhoto(resultSet.getString(7));
		return d;
	}
}