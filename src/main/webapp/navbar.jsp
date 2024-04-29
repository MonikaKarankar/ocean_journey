<!DOCTYPE html>
<%@page import="cruisebooking.dto.AdminCrud"%>
<%@page import="cruisebooking.dao.Admin"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sidebar Menu with Dropdown</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
   body {
    background-image: url('images/ship6.jpg'); 
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;
    background-repeat: no-repeat;
    height: 100%; 
}
.sidebar {
    height: 100%;
    width: 250px;
    position: fixed;
    top: 0;
    left: 0;
    background-color: #333;
    padding-top: 20px;
    
}

.sidebar a {
    padding: 10px 20px;
    text-decoration: none;
    font-size: 18px;
    color: #fff;
    display: block;
}

.sidebar a:hover {
    background-color: #555;
}

.sidebar .dropdown-content {
    max-height: 0;
    overflow: hidden;
    padding-left: 20px;
    transition: max-height 1s ease, opacity 1s ease; /* Add transition effect */
}

.sidebar .dropdown:hover .dropdown-content {
    max-height: 200px; 
    
}

.sidebar .dropdown-content a {
    padding: 10px 20px;
    text-decoration: none;
    font-size: 16px;
    color: #fff;
    display: block;
}

.sidebar .dropdown:hover .dropdown-content {
    display: block;
}

.dropdown-icon {
    float: right;
}

.content {
    margin-left: 250px;
    padding: 0px;
}

.heading {
    background-color: LightSeaGreen;
    padding: 20px;
    font-weight: bolder;
    font-size: 20px;
    text-align: center;
}

.img1 {
    width: 40%;
    height: 25%;
    border-radius: 50%;
    background-size: cover;
}

.sidebar h2 {
    color: white;
    font-family: cursive;
    font-weight: bolder;
    letter-spacing: 4px;
}
  
</style>
</head>
<body>

<div class="sidebar">
    <center>
    <h2>Occean Journey</h2>
    <img class="img1 mb-3" src="images/logo2.webp" alt="ShipLogo">
    </center>
    <a href="adminpanel.jsp"><i class="fas fa-home"></i> Home</a>
    
    <div class="dropdown">
        <a href="#"><i class="fa-solid fa-user"></i>  Admin <i class="fas fa-chevron-down dropdown-icon"></i></a>
        <div class="dropdown-content">
            <a href="adminprofile.jsp">Admin Profile</a>
            <a href="adminRegistration.jsp">Create New Admin</a>
            <a href="showalladmin.jsp">Display All Admin</a>
        </div>
    </div>
    <div class="dropdown">
        <a href="#"><i class="fa fa-ship" aria-hidden="true"></i>  Cruise  <i class="fas fa-chevron-down dropdown-icon"></i></a>
        <div class="dropdown-content">
            <a href="cruiseinfo.jsp">Create Cruise</a>
            <a href="showcruiseinfo.jsp">Cruise Info</a>
        </div>
    </div>
    <div class="dropdown">
        <a href="#"><i class="fa-solid fa-users"></i>  Staff  <i class="fas fa-chevron-down dropdown-icon"></i></a>
        <div class="dropdown-content">
            <a href="cruiseStaff.jsp"> Add Cruise Staff</a>
            <a href="showcruisestaff.jsp"> Show All Staff</a>
        </div>
    </div>
    <a href="createcruise.jsp"><i class="fa-sharp fa-solid fa-ship"></i>  Create Todays Cruise </a>
    <a href="todayscruise.jsp"><i class="fa-sharp fa-solid fa-ship"></i>  Display Todays Cruise </a>
    <a href="showbooking.jsp"><i class="fa-sharp fa-solid fa-ticket"></i> Booking</a>
    <a href="contact.jsp"><i class="fa-sharp fa-solid fa-commenting"></i>  Contact </a>
    <a href="adminlogin.jsp"><i class="fa-sharp fa-solid fa-lock"></i>  Logout </a>
</div>

<div class="content">
     <% 
    HttpSession httpSession = request.getSession();
    String email = (String) httpSession.getAttribute("session");
    AdminCrud adminCrud = new AdminCrud();
    Admin admin = adminCrud.adminInfo(email); %>
    <h2 class="heading">Admin Panel <span style="float: right;"><i class="fa-sharp fa-solid fa-user"></i>  <%=admin.getfName() %> &nbsp <%= admin.getlName() %></span>
    </h2>
    
 
</div>



<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>

</body>
</html>
