<!doctype html>
<%@page import="cruisebooking.dto.CreateCruiseCrud"%>
<%@page import="cruisebooking.dao.CreateCruise"%>
<%@page import="java.util.List"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Admin | Cruise</title>
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
        .info-pair {
            display: flex;
            justify-content: space-between;
        }
        .info-pair b {
            margin-right: 10px;
        }
        /* Styles for the search container */
        .search-container {
            position: relative;
            display: inline-block;
            margin-left: 38%;
            margin-bottom: 10px;
        }
        
        /* Search input */
        #searchInput {
            border-radius: 20px;
            border: 2px solid transparent; 
            padding: 10px;
            width: 80%; 
            transition: all 0.3s;
            box-shadow: none;
            margin-right: 5px;
            border-color: black;
        }
        
        #searchInput:hover {
            border-color: blue;
            backgroud-color: blue;
            box-shadow: 10px 5px 5px blue;
        }
        
        /* Search button */
        .search-btn {
            background-color: transparent;
            font-size: 10px;
            width: 20px;
            height: 20px;
            border: none;
            cursor: pointer;
        }
        .search-btn img{
            top: 0;
            width: 70px;
            height: 70px;
            border-radius: 30%;
        }
        .search-btn img:hover{
            width: 80px;
            height: 80px;
            transition: 0.5s;
        }
        
        /* Dropdown */
        .dropdown-content1 {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 200px;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            z-index: 1;
        }
        
        .dropdown-content1 select {
            width: 100%;
            padding: 10px;
        }
        
        .dropdown-content1.show {
            display: block;
        }
        .col-md-3 {
            margin-right: 20px; 
            margin-bottom: 20px;
        }
        /* Added styles to center the cards and add space between them */
        .row {
            justify-content: center;
        }
        .col-md-3 {
            margin-right: 20px; 
            margin-bottom: 20px;
        }
        ::-webkit-scrollbar {
            display: none;
        }
    </style>
     <script type="text/javascript">
        function toggleDropdown() {
            var dropdown = document.getElementById("searchDropdown");
            dropdown.classList.toggle("show");
        }

        function updateSearchInput() {
            var select = document.getElementById("searchSelect");
            var selectedOption = select.options[select.selectedIndex].text;
            document.getElementById("searchInput").value = selectedOption;
        }
    </script>
  </head>
  <body>
    <%@ include file="navbar.jsp" %>
    
    <%CreateCruiseCrud createCruiseCrud = new CreateCruiseCrud();
      List<CreateCruise> createCruises = createCruiseCrud.getAllCruiseInfo();
      
    %>
   
    <div class="content">
      <h2 class="text-center mb-4 add-staff-heading">Display Today's Cruise</h2>
      
      <div class="container">
      
        <%String message = (String) request.getAttribute("message");
        if(message != null){
        %>  
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> <%=message %>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <%} %>
        
        <%String delete = (String) request.getAttribute("delete");
                if(delete != null){
            %>  
            <div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>Success!</strong> <%=delete %>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <%} %>
    
        <% int count = 0; %>
        <% for(CreateCruise createCruise : createCruises) { %>
          <% if (count % 3 == 0) { %>
            <div class="row">
          <% } %>
         <div class="col-md-3">
                <div class="card">
                    <div class="card" style="width: 18rem;">
                        <img src="images/ship1.jpg" class="card-img-top" alt="...">
                        <div class="card-body" style="text-align: justify;">
                            <div class="info-pair">
                                <b>Cruise Id :</b>
                                <span><%=createCruise.getCruiseId() %></span>
                            </div>
                            <div class="info-pair">
                                <b>Poilet Id :</b>
                                <span><%=createCruise.getPoiletId() %></span>
                            </div>
                            <div class="info-pair">
                                <b>From Location :</b>
                                <span><%=createCruise.getDepartureLocation() %></span>
                            </div>
                            <div class="info-pair">
                                <b>To Location :</b>
                                <span><%=createCruise.getDepartureDate() %></span>
                            </div>
                            <div class="info-pair">
                                <b>Date :</b>
                                <span><%= createCruise.getDepartureDay() %></span>
                            </div>
                            <div class="info-pair">
                                <b>From Location :</b>
                                <span><%=createCruise.getDestinationLocation() %></span>
                            </div>
                            <div class="info-pair">
                                <b>To Location :</b>
                                <span><%=createCruise.getDestinationDate() %></span>
                            </div>
                            <div class="info-pair">
                                <b>Date :</b>
                                <span><%= createCruise.getDestinationDay() %></span>
                            </div>
                            <div class="info-pair">
                                <b>Time :</b>
                                <span><%= createCruise.getTime() %></span>
                            </div>
                            <div class="info-pair">
                                <b>Price :</b>
                                <span><%= createCruise.getPrice() %></span>
                            </div>
                            <form action="deletetodayscruise" method="post">
                            <input type="hidden" name="id" value="<%=createCruise.getId()%>">
                            <button type="submit" class="btn btn-primary">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
         
          
        <% count++; %>
          <% if (count % 3 == 0 || count == createCruises.size()) { %>
          </div>
         <% } %>
        <% } %>
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
