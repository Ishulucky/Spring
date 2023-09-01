package com.doctorsch.spring.jdbc.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doctorsch.spring.jdbc.dao.DoctorDAO;
import com.doctorsch.spring.jdbc.model.Doctor;
import com.doctorsch.spring.jdbc.model.DoctorDetails;

@Controller
public class DoctorController {
	DoctorDAO doctordao;

	@Autowired
	public DoctorController(DoctorDAO doctordao) {
		this.doctordao = doctordao;
	}

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("Home Page Requested, locale = " + locale);
		return "ishu";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
		System.out.println("Home Page Requested,");

		return "add";
	}

	@RequestMapping(value = "/raju", method = RequestMethod.POST)
	public String user(@ModelAttribute("doc") Doctor doc, Model model) {
		doctordao.createDoctorSchedule(doc);
		System.out.println(doc);
		model.addAttribute("empName", doc.getDcsc_schedule());
		System.out.println(doc.getDcsc_schedule());
		return "raju";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String home(Model model) {
		List<DoctorDetails> doc = doctordao.getAllDoctorDetails();
		System.out.println(doc);
		model.addAttribute("elist", doc);
		return "details";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login(Model model) {
		System.out.println("login page is requested");
		return "ishu";
	}
}
