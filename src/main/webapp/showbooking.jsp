<!DOCTYPE html>
<%@page import="cruisebooking.dto.BookingConfirmCrud"%>
<%@page import="cruisebooking.dao.BookingConfirm"%>
<%@page import="cruisebooking.dto.CruiseStaffCurd"%>
<%@page import="cruisebooking.dao.CruiseStaff"%>
<%@page import="cruisebooking.dao.Cruise"%>
<%@page import="cruisebooking.dto.CruiseCrud"%>
<%@page import="cruisebooking.dto.UserDto"%>
<%@page import="cruisebooking.dto.ContactCurd"%>
<%@page import="cruisebooking.dao.Admin"%>
<%@page import="java.util.List"%>
<%@page import="cruisebooking.dto.AdminCrud"%>


<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Admin Panel</title>
    <style>
     ::-webkit-scrollbar {
		    display: none;
	 }
	 .contact{
	    
	    background-color: orange;
	    border-radius: 10px;
	    padding: 20px;
	    margin-left: 20px;
	    color: white;
	    margin-bottom: 20px;
	 }
	 .cruise{ 
	    background-color: DarkSlateGray;
	    border-radius: 10px;
	    padding: 20px;
	    color: white;
	 }
	 .destination{
	    background-color: rgba(51, 51, 51, 0.4);
	    border-radius: 10px;
	    padding: 20px;
	    color: white;
	    margin-right: 20px;
	    height: 50%; 
        overflow: hidden; 
	    
	 }
	 .profit{
	    background-color: RosyBrown;
	    border-radius: 10px;
	    padding: 20px;
	    color: white;
	    margin-right: 20px;
	    height: 20%; 
	    margin-bottom: 20px;
	    
	   
	 }
	 .staffInfo{
	   background-color: BurlyWood;
	   border-radius: 10px;
	    padding: 20px;
	    color: white;
	    margin-right: 20px;
	    height: 40%; 
	 }
	 .container{
	    background-color: white;
	    width: 70%;
	    padding: 10px;
	    border-radius: 10px;
	    display: flex;
	    margin-bottom: 20px;
	 }
	 .container img{
	    width: 80px;
	    heigth: 80px;
	    border-radius: 50%;
	    
	    
	 } 
	 .container h4{
	    margin-top: 20px;
	    margin-left: 30px;
	    padding: 5px;
	    
	 }
	 .container span{
	    padding: 20px;
	    margin-left: 33%;
	    
	 }
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
      <%@ include file="navbar.jsp" %>
         <div class="content">
    <!-- Your existing HTML code -->

			<% BookingConfirmCrud bookingConfirmCrud = new BookingConfirmCrud();
			List<BookingConfirm> list = bookingConfirmCrud.getBookingInfo();
			%>
			
			<% for (BookingConfirm bookingConfirm : list) { %>
			
			<div class="container">
			    <img src="images/img1.jpg">
			    <h4><%= bookingConfirm.getFullName() %></h4>
			    <h4><%= bookingConfirm.getEmail() %></h4>
			    <!-- Button to trigger modal -->
			    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal"">
			        Show All Booking
			    </button>
			</div>
			
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			       
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        
			      </div>
			    </div>
			  </div>
			</div>
			
			
			<% } %>
			    
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