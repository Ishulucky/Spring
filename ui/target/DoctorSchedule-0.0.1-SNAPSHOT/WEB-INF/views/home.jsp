<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Doctor Information Form</h2>
    <form action="user" method="post">
        <label for="doct_id">Doctor ID:</label>
        <input type="text" id="doct_id" name="doct_id"><br><br>
        
        <label for="doct_sindex">Doctor SIndex:</label>
        <input type="text" id="doct_sindex" name="doct_sindex"><br><br>
        
        <label for="dcsc_schedule">Schedule:</label>
        <input type="text" id="dcsc_schedule" name="dcsc_schedule"><br><br>
        
        <label for="dcsc_avl_from">Available From:</label>
        <input type="time" id="dcsc_avl_from" name="dcsc_avl_from"><br><br>
        
        <label for="dcsc_avl_to">Available To:</label>
        <input type="time" id="dcsc_avl_to" name="dcsc_avl_to"><br><br>
        
        <label for="dcsc_app_slot">Appointment Slot:</label>
        <input type="time" id="dcsc_app_slot" name="dcsc_app_slot"><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>