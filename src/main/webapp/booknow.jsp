<!DOCTYPE html>
<%@page import="cruisebooking.dto.CreateCruiseCrud"%>
<%@page import="cruisebooking.dao.CreateCruise"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OceanJourney | BookNow</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <style>
        .increment-box {
            display: flex;
            align-items: center;
        }
        .counter {
            margin-left: 50px;
            font-size: 50px;
        }
        .btn1 {
            cursor: pointer;
            background-color: purple;
            font-size: 40px;
            color: white;
            margin-left: 50px;
            border-radius: 5px;
            width: 60px;
            border: none;
        }
        .btn {
            color: white;
            background-color: purple;
            width: 100%;
            
        }
        .p1 {
            text-align: center;
            font-weight: bolder;
            margin-left: auto; /* Added to align to the right */
        }
        .c1, .p1 {  
            margin-top: 15px;
            font-size: 20px; 
            display: flex;
            align-items: center; /* Added to vertically center elements */
            margin-bottom: 15px;
        }
        .logo img {
		    position: absolute;
		    left: 20px;
		    top: 20px;
		    width: 170px;
		    /* filter:drop-shadow(0px 0px 001px #a8a5a5);  */
		}
		.price{
		   margin-top: -20px;
		   margin-left: 310px;
		}
    </style>
</head>
<body>
   <%int id = Integer.parseInt(request.getParameter("id"));
     CreateCruiseCrud createCruise = new CreateCruiseCrud();
     CreateCruise createCruise2 = createCruise.getCruiseInfo(id);
      %>
   <div class="container">
   <div class="logo">
             <a href= "userHome.jsp"><img src="images/logo/logo5.png" alt="Ocean Journey Logo">  </a>     
   </div>
   <section>
      <div class="row m-3 p-5">
         <div class="col-md-7">
            <h1 class="p-3"><a href="userHome.jsp"><i class="fa fa-arrow-left" aria-hidden="true"></i></a> Select </h1>
            <h4>Departure From</h4>
           <div class="place"><%= createCruise2.getDepartureLocation() %></div>
           <p class="m-0 pt-3"><i class="fa fa-location" style="font-size:24px"></i> <span style="color: purple;"><%= createCruise2.getDepartureLocation() %>-<%= createCruise2.getDestinationLocation() %></span></p>
           <div class="bg-primary p-3 w-80 mt-3" style="color: white"><i class="fa fa-calendar-o" style="font-size:24px"></i>  <%= createCruise2.getDepartureDate() %>
                <span style="float:right"><i class="fa fa-clock-o " style="font-size:24px"></i>  <%= createCruise2.getTime() %></span></div>
           <h4 id="guestCount" class="mt-5">Add Number Of Guest: 1</h4>
           
           
           <div class="increment-box">  
                <button class="btn1 mt-3" onclick="decrement()">-</button>     
		        <div class="counter mt-3" id="counter">1</div>
		        <button class="btn1 mt-3" onclick="increment()">+</button>
		   </div>
         </div>
         <div class="col-md-5">
           <span><img src="images/ship1.jpg" width="100%" height="50%"></span>
           <p class="m-0 pt-3 mt-3"><i class="fa fa-place" style="font-size:24px"></i> <span style="color: purple;"><%= createCruise2.getDepartureLocation() %>-<%= createCruise2.getDestinationLocation() %></span></p>
           <div class="c1"><span class="mr-2"><%=createCruise2.getDepartureDate() %> - <%= createCruise2.getDestinationDate() %></span><span class="p1">Totoal Price </span></div>
           
           <h5 id="totalprice" class="price"><%= createCruise2.getPrice() %></h5>
           <div class="mb-5"><span>No. Guest</span> <h4 id="noOfGuest"></h4></div>
           
           <a href="bookingdetails.jsp?id=<%= createCruise2.getId() %>" style="text-decoration: none; color: white;"><button class="btn btn-lg" style="color: white">Continue</button></a>
           
         </div>
      </div>
   </section>
  </div>
          
     <script>
		     let count = 1;
		     const counterElement = document.getElementById("counter");
		     const guestCountElement = document.getElementById("guestCount");
		     const noOfGuestElement = document.getElementById("noOfGuest");
		     const totalPriceElement = document.getElementById("totalprice");
		     const price = <%=createCruise2.getPrice()%>;
		     
		     
		     noOfGuestElement.innerHTML = "1";
		     
		     function updateTotalPrice() {
		         const totalPrice = count * price;
		         totalPriceElement.innerText = totalPrice;
		         sessionStorage.setItem('totalPrice', totalPrice);
		         sessionStorage.setItem('noOfGuest', count);
		     }
		
		     function increment() {
		         count++;
		         counterElement.innerText = count;
		         guestCountElement.innerText = "Add Number Of Guest: " + count;
		         noOfGuestElement.innerText = count;
		         updateTotalPrice(); 
		     }
		
		     function decrement(){
		         if (count > 1) { 
		             count--;
		             counterElement.innerText = count;
		             guestCountElement.innerText = "Add Number of Guest: " + count;
		             noOfGuestElement.innerText = count;
		             updateTotalPrice(); 
		         }
		     }

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

