<%@ page import="java.util.ArrayList, com.doctorsch.spring.jdbc.model.DoctorDetails,com.doctorsch.spring.jdbc.dao.DoctorDAOImpl"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Doctors Details</title>

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <%
            ArrayList<DoctorDetails> a  = (ArrayList<DoctorDetails>) request.getAttribute("elist");
            for (DoctorDetails e : a) {
            %>
            <div class="col-md-4 mb-3">
                <div class="card">
                    <!-- Add the photo here -->
                    <img src="<%=e.getPhoto()%>" class="card-img-top" alt="Doctor Photo">
                    <div class="card-body">
                        <!-- Add the name here -->
                        <h5 class="card-title"><%=e.getFullname()%></h5>
                        <!-- Add the designation here -->
                        <p class="card-text"><%=e.getDesignation()%></p>
                        <!-- Add a view button here -->
                        <a href="#" class="btn btn-primary">View</a>
                    </div>
                </div>
            </div>
            <%
            }
            %>
        </div>
    </div>

    <!-- Include Bootstrap JS and jQuery (if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
