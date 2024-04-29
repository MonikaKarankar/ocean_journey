<%@page import="cruisebooking.dao.CreateCruise"%>
<%@page import="java.util.List"%>
<%@page import="cruisebooking.dto.CreateCruiseCrud"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- links bootstrap -->
    <script src="https://unpkg.com/scrollreveal"></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!--  -->
    <title>Ocean Journey</title>

    <!-- CSS LINK -->
    <link rel="stylesheet" href="css/style.css">
    <style>
     .cruiseHeading{
	padding: 30px;
	font-size: 30px;
	color: purple;
	letter-spacing: 5px;
	font-weight: bolder;
	
   }
   .marqee img{
      width: 450px;
      heigth: 400px;
     border-radius: 10px;
      padding: 10px;
   }
   
    </style>
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="container">
                <div class="logo">
                    <img class="logoi" src="images/logo/logo5.png" alt="Ocean Journey Logo">
                  
                </div>
                <ul class="nav-links">
                    <li><a class="txt" href="userHome.jsp">Home</a></li>
                    <li><a class="txt"  href="userprofile.jsp">Profile</a></li>
                    <li><a class="txt"  href="oceanjourny.jsp">Logout</a></li>
                    
                </ul>
            </div>
        </nav>
    </header>
    <div id="grad1"></div>
    <main>
        <section id="home" class="section">
            
            <!-- Add content for the home section here -->

            <section id="home" class="section">

                
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" >
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="images/hero1.webp" alt="First slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="images/hero4.webp" alt="Second slide">
                      </div>
                    
                      <div class="carousel-item">
                        <img class="d-block w-100" src="images/hero2.webp" alt="Third slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="images/hero5.webp" alt="Third slide">
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                  
                  <div class="cruiseHeading" > <marquee behavior="alternate"><img src="images/shipLogo.jpg" width="50" heigth="50">   UPCCOMING CRUISE   <img src="images/shipLogo.jpg" width="50" heigth="50"></marquee></div>
                  <section class="row">
                      <div class="col-md-4">
                        <div class="country-list" style="background-image: url('images/country.jpg'); height: 50%; border-radius: 10px; overflow: hidden; margin-left: 50px; background-size: cover;">
                         <h1 style="color: white; padding: 15px">Destination</h1>
						    <marquee behavior="scroll" onMouseOver="this.stop()" onMouseOut="this.start()" direction="up" hspace="20%" scrollamount="3" class="marqee" style="height: 100%; display: flex; justify-content: center; align-items: center; text-align: justify;  font-size: 20px; color: white; font-weigth: bolder; ">
							    <img src="images/des1.jpg">&nbsp&nbsp
							    <img src="images/des2.jpg">&nbsp&nbsp
							    <img src="images/des3.jpg">&nbsp&nbsp
							    <img src="images/des4.jpg">&nbsp&nbsp
							    <img src="images/des5.jpg">&nbsp&nbsp
							    <img src="images/des6.jpg">&nbsp&nbsp
							    <img src="images/des7.jpg">&nbsp&nbsp
							    <img src="images/des8.jpg">&nbsp&nbsp
							</marquee>
						    
						</div>
                      </div>
                      
                      <div class="col-md-8">
                      <div class="info" style="margin-right: 50px;">
                      <%CreateCruiseCrud createCruiseCrud = new CreateCruiseCrud();
				      List<CreateCruise> createCruises = createCruiseCrud.getAllCruiseInfo();      
				      %>
				     
				     
				        <% int count = 0; %>
					    <% for(CreateCruise createCruise : createCruises) { %>
					        
						<% if (count % 3 == 0) { %>
					   <div class="row">
					    <% } %>
					         <%HttpSession httpSession = request.getSession();
					           httpSession.setAttribute("cruiseId", createCruise.getCruiseId());%>
					      <div class="col-md-4 mb-1 mt-4" style="width: 20rem; ">
							  <img class="card-img-top" src="https://media.istockphoto.com/id/1296913564/photo/aerial-view-of-umbrellas-green-palms-on-the-sandy-beach-at-sunset-summer-holiday-in-zanzibar.jpg?s=2048x2048&w=is&k=20&c=SARa9Sti7iBqJuSh5GDmtByXxJjYtUtD64pWqwa-t-Y=" alt="Card image cap">
							  <div class="card-body" style="background-color:  #b3d9ff;">
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
					</div> 
                  </section>
                  
                     
                               
            </section>
            
        </section>
      </main>
      <footer>
    <img id="footerimg" src="images/footer.svg" alt="">
        <p>&copy; 2024 Ocean Journey. All rights reserved.</p>
        <p style="padding: 0; margin-top: -10px;"> QSPIDER</p>
    </footer>
      
    </body>
 </html>
