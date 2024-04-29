<!doctype html>
<%@page import="cruisebooking.dao.CreateCruise"%>
<%@page import="cruisebooking.dto.CreateCruiseCrud"%>
<%@page import="cruisebooking.dao.UserDao"%>
<%@page import="cruisebooking.dto.UserDto"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>OceanJourney | BookingDetails</title>
    <style>
        .logo img {
		    position: absolute;
		    left: 20px;
		    top: 20px;
		    width: 170px;
		    /* filter:drop-shadow(0px 0px 001px #a8a5a5);  */
		}
		.btn1{
		    width: 100%;
		    background-color: purple;
		    font-size: 23px;
		    padding: 5px;
		    border-radius: 5px;
		    border: none;
		}
		.label{
		    font-size: 20px;
		    padding: 5px;
		    font-weight: bolder;
		    
		}
		.col-md-7 input{
		    padding: 10px;
		    padding-bottom: 20px;
		    width: 400px;
		    border: none;
		    border-radius: 10px;
		    box-shadow: 1px 1px 2px 1px purple;
		}
		.modal-body input{
		    padding: 5px;
		    padding-bottom: 10px;
		    width: 450px;
		    border: none;
		    border-radius: 10px;
		    box-shadow: 0.5px 1px 2px 0.5px purple;
		    
		}
		.cid {
        display: none;
        }
		
    </style>
  </head>
  <body>
    <div class="container">
       <% 
	    HttpSession httpSession = request.getSession();
	    String email = (String) httpSession.getAttribute("session");
	    UserDto dto = new UserDto();
	    UserDao user = dto.UserInfo(email); 
	   %>
	   <%int id = Integer.parseInt(request.getParameter("id"));
	     
	     CreateCruiseCrud createCruise = new CreateCruiseCrud();
	     CreateCruise createCruise2 = createCruise.getCruiseInfo(id);
	   %>
	   <div class="logo">
	             <a href= "userHome.jsp"><img src="images/logo/logo5.png" alt="Ocean Journey Logo">  </a>     
	   </div>
	   
	   <section>
	   
	   <form action="bookingconfirm" method="post">
      <div class="row m-3 p-5">
         <div class="col-md-7">
            <input type="number" class="cid" name="cId" value="<%=createCruise2.getId()%>">
            <h1 class="p-3"><a href="booknow.jsp?id=<%= createCruise2.getId()%>"><i class="fa fa-arrow-left" aria-hidden="true"></i></a> Billing Deatils </h1>
            <label class="label">Name</label><br>
            <input type="text" value="<%=user.getFullName()  %>" name="fullName" readonly><br>
            <label class="label">Email</label><br>
            <input type="text" value="<%= user.getEmail() %>" name="email" readonly><br>
            <label class="label">Phone No</label><br>
            <input type="number" value="<%= user.getPhone() %>" readonly><br>
            <label class="label">Nationality</label><br>
            <input type="text" value="<%= user.getNationality() %>" readonly><br>
            
            
         </div>
         
         <div class="col-md-5 mt-5">
            <div class="card" style="width: 25rem;">
			  <div class="card-header" style="text-align: center">
			    <input style="text-align: center; border: none; font-size:25px; font-weight: bolder;"   name="cruiseId" value="<%=createCruise2.getCruiseId() %>" readonly>
			    <h5 class="card-title"><%=createCruise2.getDepartureLocation() %> - <%=createCruise2.getDestinationLocation() %></h5>
			    <div style="text-align: center; display: inline-flex">
			       <p><%= createCruise2.getDepartureDate() %><br>
			          <%= createCruise2.getDepartureDay() %></p>
			          
			    </div>
			    
			    <div style="display: inline-flex">
			      ---- <img src="images/shipLogo.jpg" alt="ship" width="40px" heigth="30px" style="margin: 7px 7px 5px 15px"> ----
			    </div>
			    <div style="text-align: center;display: inline-flex">
			       <p><%= createCruise2.getDestinationDate() %><br>
			          <%= createCruise2.getDepartureDay() %></p>
			    </div>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item p-3" style="text-align: center;"><i class="fa fa-bath" aria-hidden="true"></i> Bathroom, vanity area &ensp; &ensp;<i class="fa fa-desktop" aria-hidden="true"></i> Telivision <br> <i class="fa fa-lock" aria-hidden="true"></i> Secure Locker &ensp; &ensp;<i class="fa fa-glass-martini"></i>WaterBottles&ensp; &ensp;<i class="fas fa-utensils"></i>Dining</li>
			    <li class="list-group-item p-3">Number of Guest : <input id="noOfGuest" style="float: rigth; font-size: 15px; font-weigth: bolder; border: none" type="text" name="noOfGuest" readonly></li>
			    <li class="list-group-item p-3"><h4>Price Details</h4><h5>Total Price <br><input id="totalPrice" type="number" name="totalPrice" style="border: none" readonly> </h5><a href="booknow.jsp?id=<%=createCruise2.getId() %>" style="text-decoration: none; color: white"><div class="btn btn-primary" style="margin-top: -120px; margin-left: 300px">Edit</div></a></li>
			    <li class="list-group-item p-3"><a href="#" style="text-decoration: none; "><div class="btn1" style="color: white; text-align: center" data-toggle="modal" data-target="#exampleModal">Proceed To Payment</div></a></li>
			  </ul>
			</div>
         </div>  
         
	</div> 
	
	 
			
			<!-- Modal -->
			
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Confirm Your Payment</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      
			      <div class="modal-body">
			        <label class="label">CardHolderName</label><br>
		            <input type="text" value="" name="cardholdername" required><br>
		            <label class="label">Card No.</label><br>
		            <input type="text" value="" name="cardno" required><br>
		            <label class="label">Expiry Date</label><br>
		            <input type="date" value="" name="expirydate" required><br>
		            
			      </div>
			      <div ><img src="images/logo/visa.jpg" width="100px" heigth="60px"><img src="images/logo/mastercard.jpg" width="100px" heigth="60px"><img src="images/logo/paypal.jpg" width="100px" heigth="60px"></div>
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-lg btn-block" style="background-color: purple; color: white">Confirm</button>
			        
			      </div>
			    </div>
			  </div>
			  
			</div>
			</form>
    <script>
    window.onload = function() {
        const totalPrice = sessionStorage.getItem('totalPrice');
        const noOfGuest = sessionStorage.getItem('noOfGuest');
        if (totalPrice && noOfGuest) {
            
            document.getElementById('totalPrice').value = totalPrice;
            document.getElementById('noOfGuest').value = noOfGuest;
            sessionStorage.setItem('totalPrice', totalPrice);
	        sessionStorage.setItem('noOfGuest', noOfGuest);
        }
    };

    </script>
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