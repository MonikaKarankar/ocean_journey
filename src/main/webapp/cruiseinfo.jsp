<!doctype html>
<%@page import="cruisebooking.dao.Cruise"%>
<%@page import="java.util.List"%>
<%@page import="cruisebooking.dto.CruiseCrud"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Admin | Cruise Info</title>
    <style>
      .add-staff-heading {
        width: 90%;
        border-radius: 10px;
        background-color: #ADD8E6; 
        color: purple; 
        padding: 5px;
        font-size: 30px; 
        text-align: center; 
        letter-spacing : 5px;
        font-weight: bolder;
        margin: 0 auto; 
        margin-bottom: 20px; 
      }

      .form-container {
        width: 70%; 
        margin: 0 auto;
        padding: 20px; 
        margin-bottom: 20px;
        background-color: #f2f2f2; 
        border: 1px solid #ccc; 
        border-radius: 10px; 
        box-shadow: 0px 0px 5px 0px #ccc;      
      }

      .form-container label {
        font-weight: bolder; 
      }
      ::-webkit-scrollbar {
		    display: none;
		  }
    </style>
  </head>
  <body>
    <%@include file="navbar.jsp" %>
    <div class="content">
      <h2 class="text-center mb-4 add-staff-heading">Admin Profile</h2>
      <%String message =(String) request.getAttribute("message"); 
      if(message != null){
      %>
      <%=message %>
      <%} %>
      <div class="form-container ">
        <form action="cruiseinfo" method="post">
          <div class="form-group">
            <label for="cruiseName">Cruise Name:</label>
            <input type="text" class="form-control" name="cruiseName" placeholder="Enter Cruise Name" required>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="cruiseId">Cruise ID:</label>
              <input type="text" class="form-control" name="cruiseId" placeholder="Enter Cruise ID" required>
            </div>
            <div class="form-group col-md-6">
              <label for="ownerName">Owner Name:</label>
              <input type="text" class="form-control" name="ownerName" placeholder="Enter Owner Name" required>
            </div>
          </div>
          <div class="form-group">
            <label for="classType">Class Type:</label><br>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="checkbox" name="classType" value="firstclass">
              <label class="form-check-label" for="inlineCheckbox1">First Class</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="checkbox" name="classType" value="secondclass">
              <label class="form-check-label" for="inlineCheckbox2">Second Class</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="checkbox" name="classType" value="thirdclass">
              <label class="form-check-label" for="inlineCheckbox3">Third Class</label>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="size">Size:</label>
              <input type="text" class="form-control" name="size" placeholder="Enter Size" required>
            </div>
            <div class="form-group col-md-6">
              <label for="speed">Speed:</label>
              <input type="text" class="form-control" name="speed" placeholder="Enter Speed" required>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="passengerCapacity">Passenger Capacity:</label>
              <input type="text" class="form-control" name="passengerCapacity" placeholder="Enter Passenger Capacity" required>
            </div>
            <div class="form-group col-md-6">
              <label for="baggageCapacity">Baggage Capacity:</label>
              <input type="text" class="form-control" name="baggageCapacity" placeholder="Enter Baggage Capacity" required>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="totalCapacity">Total Capacity:</label>
              <input type="text" class="form-control" name="totalCapacity" placeholder="Enter Total Capacity" required>
            </div>
            <div class="form-group col-md-6">
              <label for="joinDate">Join Date:</label>
              <input type="date" class="form-control" name="joinDate" placeholder="Enter Join Date" required>
            </div>
          </div>
          <div class="form-group">
            <label for="time">Time:</label>
            <input type="time" class="form-control" name="time" placeholder="Time" required>
          </div>
          <button type="submit" class="btn btn-primary">Add Cruise</button>
          <button type="reset" class="btn btn-secondary">Reset</button>
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
