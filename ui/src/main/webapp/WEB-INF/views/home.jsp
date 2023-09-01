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
    <form id="dayForm" action="raju" method="POST">
        <label for="doct_id">Doctor ID:</label>
        <input type="text" id="doct_id" name="doct_id"><br><br>
        
     
        <input type="checkbox" id="monday" name="day" value="M">
        <label for="monday">Monday</label><br>

        <input type="checkbox" id="tuesday" name="day" value="T">
        <label for="tuesday">Tuesday</label><br>

        <input type="checkbox" id="wednesday" name="day" value="W">
        <label for="wednesday">Wednesday</label><br>

        <input type="checkbox" id="thursday" name="day" value="H">
        <label for="thursday">Thursday</label><br>

        <input type="checkbox" id="friday" name="day" value="F">
        <label for="friday">Friday</label><br>

        <input type="checkbox" id="saturday" name="day" value="S">
        <label for="saturday">Saturday</label><br>

        <input type="checkbox" id="sunday" name="day" value="U">
        <label for="sunday">Sunday</label><br>
		
		<!-- hidden input field -->
		<input type="hidden" name="daysConcatenated" id="daysConcatenated" value="">
     
    
       
        <label for="dcsc_avl_from">Available From:</label>
        <input type="time" id="dcsc_avl_from" name="dcsc_avl_from"><br><br>
        
        <label for="dcsc_avl_to">Available To:</label>
        <input type="time" id="dcsc_avl_to" name="dcsc_avl_to"><br><br>
        
        <label for="dcsc_app_slot">Appointment Slot:</label>
        <input type="time" id="dcsc_app_slot" name="dcsc_app_slot"><br><br>
        
         <button type="button" id="submitButton">Submit</button>
    </form>
    
    
    <script>
        document.getElementById('submitButton').addEventListener('click', function() {
            const checkboxes = document.querySelectorAll('input[name="day"]:checked');
            let selectedValues = '';

            checkboxes.forEach(function(checkbox) {
                selectedValues += checkbox.value;
            });

            // Set the concatenated string as the value of the hidden input field
            document.getElementById('daysConcatenated').value = selectedValues;
			
            // Submit the form
            document.getElementById('dayForm').submit();
        });
        
        
        function prepareAndSubmitJSONData(event) {
            event.preventDefault(); // Prevent the form from submitting normally

            const availabilityDataJSON = JSON.stringify(availabilityData);
            document.getElementById('availabilityDataJSON').value = availabilityDataJSON;

            // Submit the form
            event.target.submit();
        }

    </script>
  
</body>
</html>