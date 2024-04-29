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

    <title>Admin | Admin List</title>
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
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .form-label {
            flex: 0 0 30%;
            text-align: right;
            margin-right: 10px;
            color: #333;
            font-weight: bold;
        }

        .form-input {
            flex: 0 0 70%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .form-input:focus,
        .form-input:hover {
            border-color: #007bff;
            outline: none;
        }
        ::-webkit-scrollbar {
		    display: none;
		  }
    </style>
  </head>
  <body>
  <%@ include file="navbar.jsp" %>
<div class="content">     
      
        <% 
            AdminCrud crud = new AdminCrud();
            List<Admin> list = crud.getAllAdmin();
        %> 
        <h2 class="text-center mb-4 add-staff-heading">Admin List</h2>
        <div class="container table-container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Address</th>
                        <th scope="col">Adhar</th>
                        <th scope="col">Department</th>
                        <th scope="col">Operation</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(Admin admin1 : list) { %>
                        <tr>
                            <th scope="row"><%= admin1.getId() %></th>
                            <td><%= admin1.getfName() %></td>
                            <td><%= admin1.getlName() %></td>
                            <td><%= admin1.getEmail() %></td>
                            <td><%= admin1.getPhone() %></td>
                            <td><%= admin1.getAddress() %></td> 
                            <td><%= admin1.getAdhar() %></td>
                            <td><%= admin1.getDepartment() %></td>
                            <td>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop<%= admin.getId() %>">View</button></td>
                        </tr>
                      
                
        </div>
        <!-- Button trigger modal -->


		<!-- Modal -->
		
		<div class="modal fade" id="staticBackdrop<%= admin.getId() %>" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">Admin</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      
		        <div class="form-container">
    <form id="interactiveForm" action="process_form.php" method="post">
        <div class="form-row">
            <label for="fName" class="form-label">First Name:</label>
            <input type="text" id="fname" name="fname" class="form-input" value="<%=admin.getfName() %>" readonly>
        </div>
        <div class="form-row">
            <label for="lName" class="form-label">Last Name:</label>
            <input type="text" id="lName" name="lName" class="form-input" value="<%=admin.getlName() %>" readonly>
        </div>
        <div class="form-row">
            <label for="email" class="form-label">Email:</label>
            <input type="email" id="email" name="email" class="form-input" value="<%=admin.getEmail() %>" readonly>
        </div>
        <div class="form-row">
            <label for="phone" class="form-label">Phone:</label>
            <input type="number" id="phone" name="phone" class="form-input" value="<%=admin.getPhone() %>" readonly>
        </div>
        <div class="form-row">
            <label for="address" class="form-label">Address:</label>
            <input type="text" id="address" name="address" class="form-input" value="<%=admin.getAddress() %>" readonly>
        </div>
        <div class="form-row">
            <label for="adhar" class="form-label">Adhar:</label>
            <input type="number" id="adhar" name="adhar" class="form-input" value="<%=admin.getAdhar() %>" readonly>
        </div>
        <div class="form-row">
            <label for="idProof" class="form-label">Id Proof:</label>
            <input type="text" id="idProof" name="idProof" class="form-input" value="<%=admin.getIdProof() %>" readonly>
        </div>
        <div class="form-row">
            <label for="position" class="form-label">Position:</label>
            <input type="text" id="position" name="position" class="form-input" value="<%=admin.getPosition() %>" readonly>
        </div>
        <div class="form-row">
            <label for="department" class="form-label">Department:</label>
            <input type="text" id="department" name="department" class="form-input" value="<%=admin.getDepartment() %>" readonly>
        </div>
        <div class="form-row">
            <label for="date" class="form-label">Date:</label>
            <input type="text" id="date" name="date" class="form-input" value="<%=admin.getDate() %>" readonly>
        </div>
        <div class="form-row">
            <label for="time" class="form-label">Time:</label>
            <input type="text" id="time" name="time" class="form-input" value="<%=admin.getTime() %>" readonly>
        </div>
    </form>
</div>
		        

		        
		      
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
