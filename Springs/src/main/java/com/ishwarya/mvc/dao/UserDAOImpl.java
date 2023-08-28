package com.ishwarya.mvc.dao;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ishwarya.mvc.model.User;

public class UserDAOImpl implements UserDAO {
	JdbcTemplate jdbcTemplate;

	private final String SQL_INSERT_USER = "insert into AppUser (username) values(?)";

	@Autowired
	public UserDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public boolean createUser(User us) {
		// TODO Auto-generated method stub
		return jdbcTemplate.update(SQL_INSERT_USER, us.getUserName()) > 0;
	}
}
