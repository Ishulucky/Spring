package com.doctorsch.spring.jdbc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doctorsch.spring.jdbc.dao.DoctorDAO;
import com.doctorsch.spring.jdbc.model.DoctorDetails;
import com.doctorsch.spring.jdbc.model.UserDetails;

@Controller
public class DoctorController {
	DoctorDAO doct;

	@Autowired
	public DoctorController(DoctorDAO doct) {
		this.doct = doct;
	}

	/*
	 * @RequestMapping(value = "/add", method = RequestMethod.GET) public String home1(Locale locale, Model model) {
	 * System.out.println("Home Page Requested,");
	 * 
	 * return "add"; }
	 */

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model m) {
		List<DoctorDetails> d = doct.getAllDoctorDetails();
		System.out.print(d);
		m.addAttribute("elist", d);
		return "details";
	}

	@RequestMapping(value = "/one", method = RequestMethod.GET)

	public String onedoc(@Validated DoctorDetails doc, Model m) {
		DoctorDetails d = doct.getDoctorById(doc.getDoctorid());
		System.out.println(d);
		m.addAttribute("doctor", d);
		return "onedoc";
	}

	// @RequestMapping(value = "/login", method = RequestMethod.GET)
	// public String oneuser(@Validated UserDetails us, Model m) {
	// UserDetails d = doct.getUserByUsername("niki");
	// System.out.println(d);
	// m.addAttribute("user", d);
	// return "login";
	// }
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login(Model m) {
		return "loginpage";
	}

	@RequestMapping(value = "/valid", method = RequestMethod.GET)
	public String login(@Validated UserDetails us, Model model) {
		UserDetails d = doct.getUserByUsername(us.getUsername());
		if (d.getPassword().equals(us.getPassword())) {
			model.addAttribute("elist", doct.getAllDoctorDetails());
			return "details";
		} else {
			return "loginpage";
		}
	}
}
