<%@page import="cruisebooking.dto.AdminCrud"%>
<%@page import="cruisebooking.dao.Admin"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Admin | Admin Profile</title>
    <style type="text/css">
       .add-staff-heading {
            width: 90%;
            border-radius: 10px;
            background-color: #ADD8E6; /* Light blue background color */
            color: purple; /* Purple text color */
            padding: 5px; /* Add padding */
            font-size: 30px; /* Font size */
            text-align: center; /* Center align text */
            letter-spacing : 5px;
            font-weight: bolder;
            top: 0px;
            margin-left : 5%;
            
        }
        .container{
           position: relative;
           top: 0px;
           background-color: white; 
           border-radius: 5px;    
        }
        ::-webkit-scrollbar {
		    display: none;
		  }
        
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>

<div class="content">
    <% 
    HttpSession httpSession2 = request.getSession();
    String email1 = (String) httpSession.getAttribute("session");
    AdminCrud adminCrud1 = new AdminCrud();
    Admin admin1 = adminCrud.adminInfo(email1); %>
    
    <h2 class="text-center mb-4 add-staff-heading">Admin Profile</h2>
    <div class="container mt-3">
      <form style="padding: 20px; width:100%;">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="fName">First Name</label>
                    <input type="text" class="form-control" id="fName" name="fName" value="<%= admin.getfName()%>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="lName">Last Name</label>
                    <input type="text" class="form-control" id="lName" name="lName" value="<%= admin.getlName() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= admin.getEmail() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" value="<%= admin.getAddress() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="departmentLocation">Department Location</label>
                    <input type="text" class="form-control" id="departmentLocation" name="departmentLocation" value="<%= admin.getdLocation() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="phone">Phone</label>
                    <input type="number" class="form-control" id="phone" name="phone" value="<%= admin.getPhone() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="adhar">Adhar</label>
                    <input type="number" class="form-control" id="adhar" name="adhar" value="<%= admin.getAdhar() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="idProof">Id Proof</label>
                    <input type="text" class="form-control" id="idProof" name="idProof" value="<%= admin.getIdProof() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="position">Position</label>
                    <input type="text" class="form-control" id="position" name="position" value="<%= admin.getPosition() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="department">Department</label>
                    <input type="text" class="form-control" id="department" name="department" value="<%= admin.getDepartment() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="time">Time</label>
                    <input type="text" class="form-control" id="time" name="time" value="<%= admin.getTime() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="time">Date</label>
                    <input type="text" class="form-control" id="date" name="date" value="<%= admin.getDate() %>" readonly>
                </div>
            </div>
            <!-- Add more fields here -->
        </form>
    </div>
    
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>
