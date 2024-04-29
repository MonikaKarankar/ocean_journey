<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Admin | Admin Registration</title>
      
    <style type="text/css">
    .add-staff-heading {
            width: 90%;
            border-radius: 10px;
            background-color: #ADD8E6; /* Light blue background color */
            color: purple; /* Purple text color */
            padding: 5px; /* Add padding */
            font-size: 30px; /* Font size */
            text-align: center; /* Center align text */
            letter-spacing: 5px;
            font-weight: bolder;
            margin-left: 5%;
        }

        .container {
            margine-top: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            width: 100%;
            max-width: 800px; /* Adjust the max-width as needed */
        }

        .form-group {
            margin-bottom: 20px;
            display: flex;
            flex-wrap: wrap; /* Allows multiple elements in a row */
        }

        .form-group label {
            width: calc(50% - 10px); /* Adjust label width */
            margin-right: 10px;
            font-weight: bolder;
            margin-bottom: 0; /* Remove default bottom margin */
        }

        .form-group input,
        .form-group button {
            width: calc(50% - 10px); /* Adjust input width */
            padding: 8px;
            
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="reset"] {
            margin-left: 10px;
            background-color: #dc3545;
        }
        ::-webkit-scrollbar {
            display: none;
          }
    </style>
  </head>
  <body>
  <%@ include file="navbar.jsp" %>
  
  <div class="content">
  <h2 class="text-center mb-4 add-staff-heading">Admin Registration</h2>
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
   <div class="container">
        <form action="adminregistration" method="post">
            <div class="form-group">
                <label for="fName">First Name:</label>
                <input type="text" id="fName" name="fName" required>
                <label for="lName">Last Name:</label>
                <input type="text" id="lName" name="lName" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="dlocation">Department Location:</label>
                <input type="text" id="dlocation" name="dlocation" required>
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="adhar">AdharCard No:</label>
                <input type="tel" id="adhar" name="adhar" required>
                <label for="idproof">ID Proof:</label>
                <input type="text" id="idproof" name="idproof" required>
            </div>
            <div class="form-group">
                <label for="position">Position:</label>
                <input type="text" id="position" name="position" required>
                <label for="department">Department:</label>
                <input type="text" id="department" name="department" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required>
                <label for="time">Time:</label>
                <input type="time" id="time" name="time" required>
            </div>
            <div class="form-group">
                <button>Add new Admin</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
    <script src="js/AdminPanel.js"></script>

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
