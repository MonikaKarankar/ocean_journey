<!doctype html>
<%@page import="cruisebooking.dao.CreateCruise"%>
<%@page import="java.util.List"%>
<%@page import="cruisebooking.dto.CreateCruiseCrud"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    
    <title>OceanJourney | Booking</title>
    
    <link rel="stylesheet" href="css/styleindex.css"> 
    <style>
    
	.row{
	    position: absolute;
	    margin-top: 10%;
	   
	}
    </style>
  </head>
  <body>
	  <header>
	        <nav class="navbar">
	            <div class="container">
	                <div class="logo">
	                    <img src="images/logo/logo5.png" alt="Ocean Journey Logo">       
	                </div>
	                <ul class="nav-links">
	                    <li><a class="txt" href="#home">Home</a></li>
	                    <li><a class="txt"  href="userprofile.jsp">Profile</a></li>
	                    
	                    <li><a class="txt"  href="index1.jsp">Logout</a></li>
	                    
	                </ul>
	            </div>
	        </nav>
	    </header>
	    
	
	<div class="container">
	 <%CreateCruiseCrud createCruiseCrud = new CreateCruiseCrud();
      List<CreateCruise> createCruises = createCruiseCrud.getAllCruiseInfo();      
     %>
     
     
        <% int count = 0; %>
	    <% for(CreateCruise createCruise : createCruises) { %>
	        
		<% if (count % 3 == 0) { %>
	   <div class="row">
	    <% } %>
	    
	      
	       
	      <div class="card" style="width: 21rem;">
			  <img class="card-img-top" src="https://media.istockphoto.com/id/1296913564/photo/aerial-view-of-umbrellas-green-palms-on-the-sandy-beach-at-sunset-summer-holiday-in-zanzibar.jpg?s=2048x2048&w=is&k=20&c=SARa9Sti7iBqJuSh5GDmtByXxJjYtUtD64pWqwa-t-Y=" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title" style="text-align: center"><%= createCruise.getDepartureLocation() %> - <%= createCruise.getDestinationLocation() %></h5>
			    <div style="text-align: center; display: inline-flex">
			       <p><%= createCruise.getDepartureDate() %><br>
			          <%= createCruise.getDepartureDay() %></p>
			    </div>
			    <div style="display: inline-flex">
			      -- <img src="images/shipLogo.jpg" alt="ship" width="40px" heigth="30px" style="margin: 7px 7px 5px 15px"> --
			    </div>
			    <div style="text-align: center;display: inline-flex">
			       <p><%= createCruise.getDestinationDate() %><br>
			          <%= createCruise.getDestinationDay() %></p>
			    </div>
			    <div class="flex justify-between items-center px-4">
			    <div>
			      <p style="display: inline-flex; padding-right: 10px; text-align: center">Starting From <br> <%= createCruise.getPrice() %> </p>  
			      <a href="booknow.jsp?id=<%= createCruise.getId() %>" class="btn1 mt-2" style="background-color: purple; color: white; float: right; padding: 10px; border-radius: 5px; border: none; text-decoration: none;">Book Now</a></div>
			    </div>
			  </div>
			</div>
		<% count++; %>
		  <% if (count % 3 == 0 || count == createCruises.size()) { %>	
	   </div>
	   <%} %>
	   <%} %>
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