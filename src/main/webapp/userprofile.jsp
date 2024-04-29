<%@page import="cruisebooking.dao.UserDao"%>
<%@page import="cruisebooking.dto.UserDto"%>
<%@page import="cruisebooking.dto.AdminCrud"%>
<%@page import="cruisebooking.dao.Admin"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>OceanJourney | User Profile</title>
    <link rel="stylesheet" href="css/styleindex.css">
    <style type="text/css">
	    body {
        margin: 0;
        padding: 0;  
        background-image: url("images/index.jpg");
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        width: 100%;
        height: 100vh;
    }
    
    .content {
        margin-top: 20px;
        width: 50%;
        background-color: rgba(255, 255, 255, 0.6); 
        margin-left: 25%;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.9);
    }
    .col-md-6 label{
       font-weigth: bolder;
       font-size: 20px;
    }
    h3{
       background-color: rgba(255, 255, 255, 0.6);
       letter-spacing: 3px;
       text-align: center;
       width: 50%;
       margin-left: 25%;
       margin-top: 100px;
       border-radius: 10px;
       box-shadow: 0 0 20px rgba(0, 0, 0, 0.9);
       padding: 3px;
       font-weight: bolder;
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
	                    <li><a class="txt" href="userHome.jsp">Home</a></li>
	                    <li><a class="txt"  href="userprofile.jsp">Profile</a></li>
	                    
	                    <li><a class="txt"  href="oceanjourny.jsp">Logout</a></li>
	                    
	                </ul>
	            </div>
	        </nav>
	    </header>

        <h3> User Profile</h3>
  <div class="content">   
    <% 
    HttpSession httpSession = request.getSession();
    String email = (String) httpSession.getAttribute("session");
    UserDto dto = new UserDto();
    UserDao user = dto.UserInfo(email); %>
    
    
     
      <form>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="fullName">FullName</label>
                    <input type="text" class="form-control" id="fullName" name="fullName" value="<%= user.getFullName() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="date">Date OF Birth</label>
                    <input type="text" class="form-control" id="date" name="date" value="<%= user.getDate() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= user.getEmail() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="phone">Phone</label>
                    <input type="text" class="form-control" id="phone" name="phone" value="<%= user.getPhone() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="gender">Gender</label>
                    <input type="text" class="form-control" id="gender" name="gender" value="<%= user.getGender() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="nationality">Id Type</label>
                    <input type="text" class="form-control" id="nationality" name="nationality" value="<%= user.getIdType() %>" readonly>
                </div>
                
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="idNumber">Id Number</label>
                    <input type="number" class="form-control" id="idNumber" name="idNumber" value="<%= user.getIdNumber() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" value="<%= user.getAddress() %>" readonly>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="state">State</label>
                    <input type="text" class="form-control" id="state" name="state" value="<%= user.getState() %>" readonly>
                </div>
                <div class="form-group col-md-6">
                    <label for="nationality">Nationality</label>
                    <input type="text" class="form-control" id="nationality" name="nationality" value="<%= user.getNationality() %>" readonly>
                </div>
                
            </div>
            
            
        </form>
    </div>
    
   </div><br><br><br><br><br>
<footer>
    <img id="footerimg" src="images/footer.svg" alt="">
        <p>&copy; 2024 Ocean Journey. All rights reserved.</p>
        <p style="padding: 0; margin-top: -10px;"> QSPIDER</p>
    </footer>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>
