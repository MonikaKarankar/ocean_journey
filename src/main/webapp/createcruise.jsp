<%@page import="java.util.List"%>
<%@page import="cruisebooking.dao.CruiseStaff"%>
<%@page import="cruisebooking.dto.CruiseStaffCurd"%>
<%@page import="cruisebooking.controler.CruiseStaffAdd"%>
<%@page import="cruisebooking.dao.Cruise"%>
<%@page import="cruisebooking.dto.CruiseCrud"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Admin | Create Cruise</title>
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
            top: 0px;
            margin-left : 5%;
            
        }
     .form-container {
            width: 50%; 
            margin: auto; 
            padding: 20px; 
            background-color: #f2f2f2; 
            border-radius: 10px;
            display: grid;
            grid-gap: 10px; 
            grid-template-columns: 1fr 1fr; 
            padding-bottom: 20px;
        }
     .form-container label {
            font-weight: bold; 
            font-size: 16px; 
        }
     .form-container input[type="text"],
     .form-container input[type="date"],
     .form-container input[type="time"],
     .form-container input[type="number"],
     .form-container select {
            width: calc(100% - 10px); 
            padding: 10px; 
            border: 1px solid #ccc; 
            border-radius: 4px; 
            box-sizing: border-box; 
            font-size: 16px; 
        }
     .form-container button {
            width: 100%; 
            padding: 10px; 
            background-color: #4CAF50; 
            color: white; 
            border: none; 
            border-radius: 4px; 
            cursor: pointer; 
            font-size: 16px; 
            justify-self: center; 
        }
        ::-webkit-scrollbar {
		    display: none;
		  }
     </style>
  </head>
  <body>
  <%@ include file="navbar.jsp" %>
     <div class="content pb-5">
        <h2 class="text-center mb-4 add-staff-heading">Create Todays Cruise</h2>
        <%CruiseCrud crud = new CruiseCrud();
          List<Cruise> cruise = crud.getAllCruise();
          CruiseStaffCurd cruiseStaffCurd = new CruiseStaffCurd();
          List<CruiseStaff> cruiseStaff = cruiseStaffCurd.getAllCruiseStaff();%>
          
        <form class="form-container" action="createcruise" method="post" >
          
             <label for="cruiseId">CruiseId:</label>
             <select name="cruiseId">
             
             <%for (Cruise cruise2 : cruise) {%>
                <option value="<%=cruise2.getCruiseId()%>"><%=cruise2.getCruiseId()%></option>
             <%} %>   
             </select>
             
             <label for="poiletId">PoiletId:</label>
             <select name="poiletId">
                
             <%for(CruiseStaff cruiseStaff2 : cruiseStaff){ %>
             
                <option value="<%=cruiseStaff2.getPoiletId() %>"><%=cruiseStaff2.getPoiletId() %></option>
             <%} %>
             </select>
             
             <label for="departureLocation">Departure Location:</label>
             <input type="text" name="departureLocation" placeholder="Enter Departure Location" required>
             
             <label for="departureDate">Departure Date:</label>
             <input type="date" name="departureDate" placeholder="Enter Departure Date" id="departureDate" required>
             
             <label for="departureDay">Departure Day:</label>
             <input type="text" name="departureDay" placeholder="Enter Departure Day" id="departureDay" readonly>
             
             <label for="destinationLocation">Destination Location:</label>
             <input type="text" name="destinationLocation" placeholder="Enter Destination Location " required>
             
             <label for="destinationDate">Destination Date:</label>
             <input type="date" name="destinationDate" placeholder="Enter Destination Date" id="destinationDate" required>
             
             <label for="destinationDay">Destination Day:</label>
             <input type="text" name="destinationDay" placeholder="Enter Destination Day" id="destinationDay" readonly>
             
             <label for="time">Time:</label>
             <input type="time" name="time" placeholder="Enter Time" required>
             
             <label for="price">Price:</label>
             <input type="number" name="price" placeholder="Enter Price" required>
             
             
             
             <button type="submit">Submit</button>
             <button type="reset">Reset</button>
        </form>
     </div>
     
     <script>
     
     function calculateDayOfWeek() {
         var departureDate = document.getElementById("departureDate").value;
         var destinationDate = document.getElementById("destinationDate").value;

         if (departureDate && destinationDate) {
             var dateObject1 = new Date(departureDate);
             var dateObject2 = new Date(destinationDate);
             var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
             var dayOfWeek1 = days[dateObject1.getDay()];
             var dayOfWeek2 = days[dateObject2.getDay()];

             
             document.getElementById("departureDay").value = dayOfWeek1;
             document.getElementById("destinationDay").value = dayOfWeek2;
         } else {
             // If no date is selected, clear the day of week input field
             document.getElementById("departureDay").value = "";
             document.getElementById("destinationDay").value = "";
         }
     }

     document.getElementById("departureDate").addEventListener("change", calculateDayOfWeek);
     document.getElementById("destinationDate").addEventListener("change", calculateDayOfWeek);
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
