package com.ishwarya.jdbc.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ishwarya.jdbc.model.Employee;
import com.ishwarya.jdbc.model.EmployeeMapper;

public class EmpDAOImpl implements EmpDAO {
	JdbcTemplate jdbcTemplate;

	// private final String SQL_FIND_EMPLOYEE = "select * from emp where empno = ?";
	// private final String SQL_DELETE_EMPLOYEE = "delete from emp where empno = ?";
	// private final String SQL_UPDATE_EMPLOYEE = "update emp set ename = ?, job = ?, sal = ?, deptno = ? where empno =
	// ?";
	private final String SQL_GET_ALL = "select * from ishwarya";
	private final String SQL_INSERT_EMPLOYEE = "insert into ishwarya(empno, ename, job, sal,dept_no) values(?,?,?,?,?)";

	@Autowired
	public EmpDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Employee> getAllEmployees() {
		return jdbcTemplate.query(SQL_GET_ALL, new EmployeeMapper());
	}

	public boolean createEmployee(Employee e) {
		return jdbcTemplate.update(SQL_INSERT_EMPLOYEE, e.getEmpNo(), e.geteName(), e.getJob(), e.getSalary(),
				e.getDeptNo()) > 0;
	}

}
