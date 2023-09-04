package com.doctorsch.spring.jdbc.model;

public class DoctorDetails {
	private int doctorid, experience, specializationid;
	private String fullname, designation, qualification, photo;

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public int getSpecializationid() {
		return specializationid;
	}

	public void setSpecializationid(int specializationid) {
		this.specializationid = specializationid;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public DoctorDetails(int doctorid, int experience, int specializationid, String fullname, String designation,
			String qualification, String photo) {
		super();
		this.doctorid = doctorid;
		this.experience = experience;
		this.specializationid = specializationid;
		this.fullname = fullname;
		this.designation = designation;
		this.qualification = qualification;
		this.photo = photo;
	}

	public DoctorDetails() {
		super();
	}

	@Override
	public String toString() {
		return "DoctorDetails [doctorid=" + doctorid + ", experience=" + experience + ", specializationid="
				+ specializationid + ", fullname=" + fullname + ", designation=" + designation + ", qualification="
				+ qualification + ", photo=" + photo + "]";
	}

}
