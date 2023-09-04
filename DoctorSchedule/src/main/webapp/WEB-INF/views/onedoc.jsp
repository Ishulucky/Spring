<%@ page import="com.doctorsch.spring.jdbc.model.DoctorDetails,com.doctorsch.spring.jdbc.dao.DoctorDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Selected Doctor</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">
            <% DoctorDetails a = (DoctorDetails) request.getAttribute("doctor"); %>
            <img alt="" src="<%= a.getPhoto() %>" class="img-fluid" width="300" height="200">
        </div>
        <div class="col-md-8">
            <h4 class="mt-4"><u>Doctor ID:</u> <%= a.getDoctorid() %></h4>
            <h4><u>Name:</u> <%= a.getFullname() %></h4>
            <h4><u>Specification ID:</u> <%= a.getSpecializationid() %></h4>
            <h4><u>Qualification:</u> <%= a.getQualification() %></h4>
            <h4><u>Experience:</u> <%= a.getExperience() %></h4>
            <h4><u>Designation:</u> <%= a.getDesignation() %></h4>

            <button type="submit" class="btn btn-primary mt-3">Booking Availability</button>
        </div>
    </div>
</div>

<!-- Include Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
