<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Information Form</title>
    <style>

		body {
		    text-align: center;
		    font-family: Arial, sans-serif;
		    background-color: #f4f4f4;
		    margin: 0;
		    padding: 0;
		}
		h2 {
		    color: #333;
		}
		
		/* Style the form container */
		#availabilityForm {
		    background-color: #fff;
		    padding: 20px;
		    border-radius: 5px;
		    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
		}
		
		/* Style the table */
		table {
		    margin-left:43%;
		}
		
		/* Style table cells */
		td {
		    margin-left: 43%;
		    padding: 8px;

		    text-align: center;
		}
		
		/* Style checkboxes and labels */
		input[type="checkbox"] {
		    margin-right: 5px;
		}
		
		label {
		    font-weight: bold;
		}
		
		/* Style time inputs */
		input[type="time"] {
		    width: 80px;
		    padding: 5px;
		    border: 1px solid #ddd;
		    border-radius: 3px;
		}
		
		/* Style the submit button */
		#submitButton {
		    background-color: #007bff;
		    color: #fff;
		    padding: 8px 15px;
		    border: none;
		    border-radius: 3px;
		    cursor: pointer;
		}
		
		#submitButton:hover {
		    background-color: #0056b3;
		}
		        
    </style>
    <script>
        window.onload = function() {
            const allCheckbox = document.getElementById("all");
            const otherCheckboxes = document.querySelectorAll(".wkdys:not(#all)");

            allCheckbox.addEventListener("change", function() {
                const isChecked = allCheckbox.checked;
                otherCheckboxes.forEach(function(checkbox) {
                    checkbox.disabled = isChecked;
                });
            });

            otherCheckboxes.forEach(function(checkbox) {
                checkbox.addEventListener("change", function() {
                    if (!this.checked) {
                        allCheckbox.checked = false;
                    }
                });
            });
            document.getElementById("submitButton").addEventListener("click", function() {
                const checkboxes = document.querySelectorAll('input[name="days"]:checked');
                let selectedValues = '';

                checkboxes.forEach(function(checkbox) {
                    selectedValues += checkbox.value;
                });
                document.getElementById("dcsc_schedule").value = selectedValues;
    			
                document.getElementById("dayForm").submit();
            });
        };
        
        

        
    </script>
</head>
<body>
    <h2>Doctor Information Form</h2>
   
    <h1>Admin Page</h1>
    <form id="dayForm" action="raju" method="POST">
        <label for="doct_id">Doctor ID:</label>
        <input type="text" id="doct_id" name="doct_id"><br><br>
        <h2>Set Availability</h2>
        <div id="availabilityForm">
            <table>
                <tr>
                    <td><input type="checkbox" name="days" id="all" value="AMTWHFS" class="wkdys">all</td>
                    <td><input type="checkbox" name="days" id="sun" value="A" class="wkdys">Sunday</td>
                </tr>
                               <tr>
                    <td><input type="checkbox" name="days" id="mon" value="M" class="wkdys">Monday</td>
                    <td><input type="checkbox" name="days" id="tue" value="t" class="wkdys">Tuesday</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="days" id="wed" value="W" class="wkdys">Wednesday</td>
                    <td><input type="checkbox" name="days" id="thu" value="H" class="wkdys">Thursday</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="days" id="fri" value="F" class="wkdys">Friday</td>
                    <td><input type="checkbox" name="days" id="sat" value="S" class="wkdys">Saturday</td>
                </tr>
            </table><br><br>
            
            <input type="hidden" name="dcsc_schedule" id="dcsc_schedule" value="">
            
            <label>From: <input type="time" id="dcsc_avl_from" name="dcsc_avl_from" value="09:00"></label>
            <label>To: <input type="time" id="dcsc_avl_to" name="dcsc_avl_to" value="12:00"></label><br><br>
            
            <label for="dcsc_app_slot">Appointment Slot:</label>
            <input type="time" id="dcsc_app_slot" name="dcsc_app_slot"><br><br>
            
            <button type="submit" id="submitButton">Submit</button>
            
        </div>
    </form>
</body>
</html>
