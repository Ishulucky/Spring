package com.ishwarya.jdbc.model;

public class Employee {
	private Integer empNo;
	private Integer deptNo;
	private String eName;
	private String job;
	private Double salary;

	public Employee() {
		super();
	}

	public Employee(Integer empNo, Integer deptNo, String eName, String job, Double salary) {
		super();
		this.empNo = empNo;
		this.deptNo = deptNo;
		this.eName = eName;
		this.job = job;
		this.salary = salary;
	}

	public Integer getEmpNo() {
		return empNo;
	}

	public void setEmpNo(Integer empNo) {
		this.empNo = empNo;
	}

	public Integer getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(Integer deptNo) {
		this.deptNo = deptNo;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Employee [empNo=" + empNo + ", deptNo=" + deptNo + ", eName=" + eName + ", job=" + job + ", salary="
				+ salary + "]";
	}

}
