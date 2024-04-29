<%@page import="cruisebooking.dao.CreateCruise"%>
<%@page import="cruisebooking.dto.CreateCruiseCrud"%>
<%@page import="cruisebooking.dto.BookingConfirmCrud"%>
<%@page import="cruisebooking.dao.BookingConfirm"%>
<%@page import="cruisebooking.dao.UserDao"%>
<%@page import="cruisebooking.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OceanJourney | Confirm Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .header {
            background-image: url('images/logo/back.jpg'); 
            background-size: cover; 
            background-position: center; 
            position: relative; 
            padding: 20px; 
            color: white; 
        }
        
        .logo img {
            width: 170px;
            position: absolute; 
            top: 20px; 
            left: 20px; 
        }
        
        .header-title {
            font-size: 30px;
            font-weight: bold;
            text-align: right;
            
        }

        .container {
            margin-top: 50px;
            width: 50%;
            border-style: solid;
            padding: 20px;
            border-radius: 5px;
        }
        
        h5{
           background-color: #B0C4DE;
           padding: 5px;
           color: black;
           margin-top: 5px;
        }
        .col-md-6 label{
           width: 120px;
           
        }
        .col-md-6 input{
           width: 220px;
           border: none;
           font-weight: bold;
           
        }
        .footer{
           background-color: purple;
           font-size: 30px;
           font-weight: bolder;
           text-align: center;
           color: white;
        }
        .btn{
           align: rigth;
           margin-top: 10px;
           
        }
    </style>
</head>
<body>
<a href="userHome.jsp" style="text-decoration: none; margin-left: 4%; padding-top: 10px; font-size: 20px;"><i class="fa fa-arrow-left font-size="2px"></i>  go back</a>
    <center>
    <img src="images/bookingcon.jpg" width="150px" heigth="150px" >
    </center>
    <% 
    HttpSession httpSession = request.getSession();
    String email = (String) httpSession.getAttribute("session");
    UserDto dto = new UserDto();
    UserDao user = dto.UserInfo(email);
    %>
    
    <%httpSession = request.getSession();
     String cruiseId = (String) httpSession.getAttribute("cruiseId");
     CreateCruiseCrud crud = new CreateCruiseCrud();
     CreateCruise createCruise = crud.getCruise(cruiseId);%>
   
    
    
    <% String message = (String)request.getAttribute("message");%>
    <h2 style="text-align:center;"><%=message %></h2>
    <h4 style="text-align:center;">Thank You!!!</h4>
    <div class="container" style="margin-bottom: 40px">
    
        <div class="header">
            <div class="logo">
             <a href= "userHome.jsp"><img src="images/logo/logo5.png" alt="Ocean Journey Logo">  </a>     
            </div>
            <div class="header-title">Booking Confirmation</div>
        </div>
        
        <h5>Cruise Details</h5>
        <section class="row">
           <div class="col-md-6">
                <label>Cruise Id</label><input type="text" value="<%= createCruise.getCruiseId() %>" readonly><br>
                <label>Departure From</label><input type="text" value="<%= createCruise.getDepartureLocation() %>" readonly><br>
                <label>Destination</label><input type="text" value="<%= createCruise.getDestinationLocation() %>" readonly>
           </div>
           <div class="col-md-6">
                <label>Departure Date</label><input type="text" value="<%= createCruise.getDepartureDate() %>" readonly><br>
                <label>Date</label><input type="text" value="<%= createCruise.getDestinationDate() %>" readonly><br>
                <label>Time</label><input type="text" value="<%= createCruise.getTime() %>" readonly>
           </div>
        </section>
         
        <h5>Traveler Details</h5>
        <section class="row">
            <div class="col-md-6"> 
                <label>Name</label><input type="text" value="<%= user.getFullName() %>" readonly><br>
                <label>Email</label><input type="text" value="<%= user.getEmail() %>" readonly>
            </div>
            <div class="col-md-6">
                <label>Phone</label><input type="text" value="<%= user.getPhone() %>" readonly><br>
                <label>Nationality</label><input type="text" value="<%= user.getNationality() %>" readonly>
            </div>
        </section>
        
        <h5>Payment Details</h5>
        <section class="row">
            <div class="col-md-6">
                <label>No Of Guest</label><input type="text" value="" id="noOfGuest" readonly><br>
                
            </div>
            <div class="col-md-6">
                <label>Total Price</label><input type="text" value="" id="totalPrice" readonly>
            </div>
        </section>
        
        <div class="footer" >Happy Journey | Thank You !!</div>
        <button class="btn btn-primary" onClick="printPage()">Print</button>
        
    </div>
        

    <script>
       function printPage(){
    	   window.print();
       }
       window.onload = function() {
    	    const totalPrice = sessionStorage.getItem('totalPrice');
    	    const noOfGuest = sessionStorage.getItem('noOfGuest');
    	    if (totalPrice && noOfGuest) {
    	        console.log("Total Price: " + totalPrice);
    	        console.log("Number of Guests: " + noOfGuest);
    	        
    	        
    	        document.getElementById('totalPrice').value = totalPrice;
    	        document.getElementById('noOfGuest').value = noOfGuest;
    	    }
    	};


    </script>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
