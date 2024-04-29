<%@page import="cruisebooking.dao.Cruise"%>
<%@page import="cruisebooking.dto.CruiseStaffCurd"%>
<%@page import="cruisebooking.dao.CruiseStaff"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Admin | Cruise</title>
    <style>
        .form-group {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 20px;
        }
        .form-group label {
            flex: 1;
            margin-right: 10px;
            text-align: right;
            font-weight: bold;
        }
        .form-group input {
            flex: 2;
        }
        .form-border {
            background-color: #fff;
            border: 2px solid #ccc;
            border-radius: 5px;
            padding: 20px;
        }
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
        ::-webkit-scrollbar {
		    display: none;
		  }
    </style>
  </head>
  <body>
  <%@ include file="navbar.jsp" %>
    
        <div class="content">
        
        <%String message = (String) request.getAttribute("message");
        if(message != null){
        %>  
        <div class="alert alert-success alert-dismissible fade show" role="alert">
		  <strong>success!</strong> <%=message %>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<%} %>
            <h2 class="text-center mb-4 add-staff-heading">Add Staff</h2>
            <div class="container mt-5">
        <div class="form-border">
            
            <form method="post" action="cruiseStaff" class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="fName">First Name:</label>
                            <input type="text" name="fName" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="contact">Contact:</label>
                            <input type="tel" name="phone" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="lastName">Last Name:</label>
                            <input type="text" name="lName" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input type="text" name="address" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="poileId">PoiletId:</label>
                            <input type="text" name="poiletId" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="state">State:</label>
                            <input type="text" name="state" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="position">Position:</label>
                            <input type="text" name="position" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="age">Age:</label>
                            <input type="number" name="age" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="company">Comapny:</label>
                            <input type="text" name="company" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="adharNo">AdharNo:</label>
                            <input type="number" name="adhar" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="joinDate">JoinDate:</label>
                            <input type="date" name="joinDate" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="salary">Salary:</label>
                            <input type="number" name="salary" class="form-control" required>
                        </div>
                    </div>
                    
                </div>
                <!-- Additional fields go here -->
                <div class="row">
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-primary btn-block">Add Staff</button>
                    </div>
                    <div class="col-md-6">
                        <button type="reset" class="btn btn-primary btn-block">Reset</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
  
    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
  </body>
</html>
