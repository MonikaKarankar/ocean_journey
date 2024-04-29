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
	 
    </style>
  </head>
  <body>
	  <%@include file="navbar.jsp" %>
	    
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
		
	    <h1 style="margin-left: 20px; padding: 20px">Dashbord</h1>
	    
	    
	    <%ContactCurd contactCurd = new ContactCurd();
	    int count = contactCurd.countOfContact(); %>
	    <section class="row">
	       <div class="col-md-3">
	          <div class="contact">
				    <h2>Contact</h2>
				      <h1> <%=count %></h1>
				    </div>
				     
				    <%UserDto dto = new UserDto();
				      int usercount = dto.getCountOfUser();%>
				    <div class="contact" style="background-color: Crimson">
				    <h2>User</h2>
				      <h1> <%=usercount %></h1>
				    </div>
				    
				    <%AdminCrud crud2 = new AdminCrud();
				      int admincount = crud2.getAdminCount();%>
				    <div class="contact" style="background-color: SteelBlue">
				    <h2>Admin</h2>
				      <h1> <%=admincount %></h1>
				    </div>
	       </div>
	       
	       <%CruiseCrud crud = new CruiseCrud();
	         List<Cruise> list = crud.getAllCruise();%>
	       <div class="col-md-4">
	           <div class="cruise">
	            <h2>Cruise Name</h2>
	            <%for(Cruise cruise : list){ %>
	            
	            <p><%=cruise.getCruiseName() %></p>
	            <%} %>
	           </div>
	       </div>
	       
	       
	       <div class="col-md-3">
	           <%BookingConfirmCrud bookingConfirm = new BookingConfirmCrud();
	             double totalPrice = bookingConfirm.getTotalPrice();%>
	           <div class="profit">
	              <h3>Total Profit</h3>
	              <h2><%= totalPrice %></h2>
	           </div>
	           
	           <%CruiseStaffCurd curd = new CruiseStaffCurd();
	             int staffCount = curd.getStaffCount(); %>
	           <div class="staffInfo">
	           <h3>Staff</h3>
	           <h2><%=staffCount %></h2> 
	           
	           <% int poiletCount = curd.getPoiletCount(); %>
	           <h3>Poilet</h3>
	           <h2><%=poiletCount %></h2> 
	           
	            <%  int managerCount = curd.getManagerCount(); %>
	           <h3>manager</h3><h2><%=managerCount %></h2></div>
	            
	       </div>
	       <div class="col-md-2">
	           <div class="destination">
	           <h5 style="color: white; padding: 15px">Destination</h5>
	           
						    <marquee behavior="scroll" direction="up" style=" display: flex; justify-content: center; align-items: center; text-align: justify;  font-size: 20px; color: white; font-weigth: bolder; ">
							    <p >United States</p>
							    <p >Canada</p>
							    <p >United Kingdom</p>
							    <p >Germany</p>
							    <p >France</p>
							    <p >Italy</p>
							    <p >Spain</p>
							    <p >Australia</p>
							    <p >Brazil</p>
							    <p >Argentina</p>
							    <p >Mexico</p>
							    <p >India</p>
							    <p >China</p>
							    <p >Japan</p>
							    
							
							    
							</marquee>
						    
						</div>
	           </div>
	       </div>
	    </section>
	    
	    
		    
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