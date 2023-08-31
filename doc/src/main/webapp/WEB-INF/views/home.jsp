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
    <form action="raju" method="POST">
        <label for="doct_id">Doctor ID:</label>
        <input type="text" id="doct_id" name="doct_id"><br><br>
        
            <label for="doct_id">Select Doctor:</label>
    <select id="doctorSelect">
        <option value="101" name="doc1">Doctor 1</option>
        <option value="102" name="doc2">Doctor 2</option>
    </select>
   
       
        <input type="checkbox" id="monday" name="days[]" value="Monday">
        <label for="monday">Monday</label><br>

        <input type="checkbox" id="tuesday" name="days[]" value="Tuesday">
        <label for="tuesday">Tuesday</label><br>

        <input type="checkbox" id="wednesday" name="days[]" value="Wednesday">
        <label for="wednesday">Wednesday</label><br>

        <input type="checkbox" id="thursday" name="days[]" value="Thursday">
        <label for="thursday">Thursday</label><br>

        <input type="checkbox" id="friday" name="days[]" value="Friday">
        <label for="friday">Friday</label><br>

        <input type="checkbox" id="saturday" name="days[]" value="Saturday">
        <label for="saturday">Saturday</label><br>

        <input type="checkbox" id="sunday" name="days[]" value="Sunday">
        <label for="sunday">Sunday</label><br>

     
    
       
        <label for="dcsc_avl_from">Available From:</label>
        <input type="time" id="dcsc_avl_from" name="dcsc_avl_from"><br><br>
        
        <label for="dcsc_avl_to">Available To:</label>
        <input type="time" id="dcsc_avl_to" name="dcsc_avl_to"><br><br>
        
        <label for="dcsc_app_slot">Appointment Slot:</label>
        <input type="time" id="dcsc_app_slot" name="dcsc_app_slot"><br><br>
        
        <input type="submit" value="add">
    </form>
</body>
</html>