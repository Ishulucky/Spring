package com.doctorsch.spring.jdbc.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<UserDetails> {
	public UserDetails mapRow(ResultSet resultSet, int i) throws SQLException {
		UserDetails d = new UserDetails();
		d.setUsername(resultSet.getString(1));
		d.setPassword(resultSet.getString(2));
		return d;
	}
}
