<%@page import="cruisebooking.dao.CruiseStaff"%>
<%@page import="cruisebooking.dto.CruiseStaffCurd"%>
<%@page import="cruisebooking.dao.Admin"%>
<%@page import="java.util.List"%>
<%@page import="cruisebooking.dto.AdminCrud"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Admin | Cruise Staff</title>
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
        .table-container {
            margin-top: 20px; 
            padding: 20px; 
            background-color: white;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            padding: 30px; 
        }
        .table th, .table td {
            padding: 20px; 
            text-align: left;
            border: 1px solid #ddd; 
        }
        ::-webkit-scrollbar {
		    display: none;
		  }
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="content">     
      
        <% CruiseStaffCurd cruiseStaffCurd = new CruiseStaffCurd();
          List<CruiseStaff> cruiseStaffs = cruiseStaffCurd.getAllCruiseStaff();
        %>
        <h2 class="text-center mb-4 add-staff-heading">Dispaly Cruise Staff</h2>
        <!-- Delete  -->
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
		<%String update = (String) request.getAttribute("update");
		        if(update != null){
	        %>  
	        <div class="alert alert-success alert-dismissible fade show" role="alert">
		  <strong>Success!</strong> <%=update %>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<%} %>
		
        <div class="container table-container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">FirstName</th>
                        <th scope="col">LastName</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Address</th>
                        <th scope="col">Position</th>
                        <th scope="col">Email</th>
                        <th scope="col" colspan="3">Operation</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(CruiseStaff cruise : cruiseStaffs) { %>
                        <tr>
                            <th scope="row"><%= cruise.getId() %></th>
                            <td><%= cruise.getfName() %></td>
                            <td><%= cruise.getlName() %></td>
                            <td><%= cruise.getPhone() %></td>
                            <td><%= cruise.getAddress() %></td> 
                            <td><%= cruise.getPosition() %></td>
                            <td><%= cruise.getEmail() %></td>
                            <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1<%=cruise.getPoiletId() %>">View</button></td>
                            <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal<%= cruise.getPoiletId() %>">Update</button></td>
                            <td><form action="deletestaff" method="post">
							        <input type="hidden" name="poiletId" value="<%= cruise.getPoiletId() %>">
							        <button type="submit" class="btn btn-danger">Delete</button>
							    </form></td>
							    
							    
                                       
                        </tr>
                        
                        <!-- Update Date -->
		
		
						<!-- Modal -->
						<div class="modal fade" id="exampleModal<%= cruise.getPoiletId() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-lg">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Update Cruise</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						       <form action="cruisestaffupdate" method="post">
					          <div class="form-group">
					            <label for="fName">First Name:</label>
					            <input type="text" class="form-control" name="fName" value="<%=cruise.getfName() %>" required>
					          </div>
					          <div class="form-row">
					            <div class="form-group col-md-6">
					              <label for="lName">Last Name:</label>
					              <input type="text" class="form-control" name="lName" value="<%= cruise.getlName() %>" required >
					            </div>
					            <div class="form-group col-md-6">
					              <label for="phone">Phone:</label>
					              <input type="number" class="form-control" name="phone" value="<%= cruise.getPhone() %>" required>
					            </div>
					          </div>
					          <div class="form-row">
					            <div class="form-group col-md-6">
					              <label for="address">Address:</label>
					              <input type="text" class="form-control" name="address" value="<%= cruise.getAddress() %>" required>
					            </div>
					            <div class="form-group col-md-6">
					              <label for="poiletId">Poilet Id:</label>
					              <input type="text" class="form-control" name="poiletId" value="<%= cruise.getPoiletId() %>" required readonly>
					            </div>
					          </div>
					          <div class="form-row">
					            <div class="form-group col-md-6">
					              <label for="state">State:</label>
					              <input type="text" class="form-control" name="state" value="<%= cruise.getState() %>" required>
					            </div>
					            <div class="form-group col-md-6">
					              <label for="email">Email:</label>
					              <input type="email" class="form-control" name="email" value="<%= cruise.getEmail() %>" required readonly>
					            </div>
					          </div>
					          <div class="form-row">
					            <div class="form-group col-md-6">
					              <label for="position">Position:</label>
					              <input type="text" class="form-control" name="position" value="<%= cruise.getPosition() %>" required>
					            </div>
					            <div class="form-group col-md-6">
					              <label for="age">Age:</label>
					              <input type="number" class="form-control" name="age" value="<%= cruise.getAge() %>" required>
					            </div>
					          </div>
					          <div class="form-row">
					          <div class="form-group col-md-6">
					            <label for="adhar">Adhar:</label>
					            <input type="number" class="form-control" name="adhar" value="<%= cruise.getAdhar() %>" required>
					          </div>
					          <div class="form-group col-md-6">
					              <label for="company">Comapany:</label>
					              <input type="text" class="form-control" name="company" value="<%= cruise.getCompany() %>" required>
					            </div>
					          
						      </div>
						      <div class="form-row">
					          <div class="form-group col-md-6">
					            <label for="joinDate">Join Date:</label>
					            <input type="date" class="form-control" name="joinDate" value="<%= cruise.getJoinDate() %>" required>
					          </div>
					          <div class="form-group col-md-6">
					              <label for="salary">Salary:</label>
					              <input type="number" class="form-control" name="salary" value="<%= cruise.getSalary() %>" required>
					            </div>
					          
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <button class="btn btn-primary">Save changes</button>
						      </div>
						      </form>
						    </div>
						  </div>
						  
						</div>
                 </div>
        

		<!-- Modal -->
		<div class="modal fade" id="exampleModal1<%=cruise.getPoiletId() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form action="process_form.php" method="post" style="font-family: Arial, sans-serif;">
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="fName" class="form-label">First Name:</label>
		                    <input type="text" id="fname" name="fname" class="form-input" value="<%=cruise.getfName() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="lName" class="form-label">Last Name:</label>
		                    <input type="text" id="lName" name="lName" class="form-input" value="<%= cruise.getlName()%>" readonly>
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="phone" class="form-label">Phone:</label>
		                    <input type="tel" id="phone" name="phone" class="form-input" value="<%=cruise.getPhone() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="address" class="form-label">Address:</label>
		                    <input type="text" id="text" name="text" class="form-input" value="<%=cruise.getAddress() %>" readonly>
		                
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="poiletId" class="form-label">PoiletId:</label>
		                    <input type="text" id="poiletId" name="poiletId" class="form-input" value="<%=cruise.getPoiletId() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="state" class="form-label">State:</label>
		                    <input type="text" id="state" name="state" class="form-input" value="<%=cruise.getState() %>" readonly>
		                
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="email" class="form-label">Email:</label>
		                    <input type="email" id="email" name="email" class="form-input" value="<%=cruise.getEmail() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="position" class="form-label">Position:</label>
		                    <input type="text" id="position" name="position" class="form-input" value="<%=cruise.getPosition() %>" readonly>
		                
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="age" class="form-label">Age:</label>
		                    <input type="number" id="age" name="age" class="form-input" value="<%=cruise.getAge() %>" readonly>
		                </div>
		                 <div style="flex-basis: 50%;">
		                    <label for="adhar" class="form-label">Adhar:</label>
		                    <input type="number" id="adhar" name="adhar" class="form-input" value="<%=cruise.getAdhar() %>" readonly>
		               
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="company" class="form-label">Company:</label>
		                    <input type="text" id="company" name="company" class="form-input" value="<%=cruise.getCompany() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="joinDate" class="form-label">JoinDate:</label>
		                    <input type="text" id="joinDate" name="joinDate" class="form-input" value="<%=cruise.getJoinDate() %>" readonly>      
		                
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 100%;">
		                    <label for="salary" class="form-label">Salary:</label>
		                    <input type="text" id="salary" name="salary" class="form-input" value="<%=cruise.getSalary() %>" readonly>
		               
		                </div>
		            </div>
		            
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		  <%} %>  
                </tbody>
            </table>
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

