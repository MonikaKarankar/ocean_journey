<!doctype html>
<%@page import="java.util.List"%>
<%@page import="cruisebooking.dto.ContactCurd"%>
<%@page import="cruisebooking.dao.ContactUs"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Admin | Contact</title>
    <style type="text/css">
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
            top: 0px;
            margin-left : 5%;
            
        }
        .marketing .col-lg-4 {
            
		    margin-bottom: 1.5rem;
		    text-align: center;
		}
		.con{
		    background-color: white;
		    padding: 5px;
		    border-radius: 10px;
		}
		.bd-placeholder-img{
		   width: 100px;
		   heigth: 100px; 
		   margin-top: -40px;
		}
		::-webkit-scrollbar {
		    display: none;
		  }
    </style>    
  </head>
  <body>
    <%@ include file="navbar.jsp" %>
    <div class="content"> 
       <h2 class="text-center mb-4 add-staff-heading">Contact</h2>
       
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
		
       <% ContactCurd contactCurd = new ContactCurd();
		   List<ContactUs> contactUs = contactCurd.getAllContact();
		   int count = 0;
       %>

			<div class="container marketing">
			    <div class="row">
			        <% for (ContactUs contactUs2 : contactUs) { %>
			            <div class="col-lg-4 mt-5">
			             <div class="con">
			                <img src="images/cont.jpg" class="bd-placeholder-img rounded-circle">
			                <h2><%= contactUs2.getName() %></h2>
			                <p><%= contactUs2.getContactno() %> | 
			                   <%= contactUs2.getEmail() %><br>
			                   <%= contactUs2.getMessage() %></p>
			                <p><form action="deletecontact" method="post">
			                   <input type="hidden" name="email" value="<%= contactUs2.getEmail()%>">
			                   <button class="btn btn-secondary" type="submit">Delete »</button>
			                   </form></p>
			            </div>
			            </div>
			            <% 
			            count++;
			            if (count % 3 == 0) { %>
			                </div>
			                <div class="row">
			            <% }
			        } %>
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