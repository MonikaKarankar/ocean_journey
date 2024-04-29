<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="css/Signup.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

   <title>OceanJourney | Regisration Form </title>
   <style>
       body {
           background-image: url('images/ship2.jpg');
           background-size: cover;
           background-repeat: no-repeat;
           font-family: Arial, sans-serif; 
       }
        
   </style>
</head>
<body>
    <div class="container">
        <header>Sign up</header>

        <form action="userregistration" method="post">
            <div class="form first">
                <div class="details personal">
                <div class="message">
                <%String message= (String) request.getAttribute("message");
                  if(message != null){
                 %>
                 <%=message %>
                 <%} %>
                 </div>
                    <span class="title">Personal Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Full Name</label>
                            <input type="text" name="fullName" placeholder="Enter your name" required>
                        </div>

                        <div class="input-field">
                            <label>Date of Birth</label>
                            <input type="date" name="date" placeholder="Enter birth date" required>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Enter your email" required>
                        </div>

                        <div class="input-field">
                            <label>Mobile Number</label>
                            <input type="tel" name="phone" placeholder="Enter mobile number" required>
                        </div>

                        <div class="input-field">
                            <label>Gender</label>
                            <select name="gender" required>
                                <option disabled selected>Select gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="others">Others</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Occupation</label>
                            <input type="text" name="occupation" placeholder="Enter your ccupation" required>
                        </div>
                    </div>
                </div>

                <div class="details ID ">
                    <span class="title">Identity Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>ID Type</label>
                            <input type="text" name="idType" placeholder="Enter ID type" required>
                        </div>

                        <div class="input-field">
                            <label>ID Number</label>
                            <input type="text" name="idNumber" placeholder="Enter ID number" required>
                        </div>

                        <div class="input-field">
                            <label>Issued State</label>
                            <input type="text" name="issuedState" placeholder="Enter issued state" required>
                        </div>

                    </div>

                    <button class="nextBtn">
                        <span class="btnText">Next</span>
                        <i class="uil uil-navigator"></i>
                    </button>
                    Allredy have an Account?<a href="userlogin.jsp" style="text-decoration : none; color:#3498db"> Login</a>
                </div> 
            </div>

            <div class="form second">
                <div class="details address">
                    <span class="title">Address Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Address Type</label>
                            <input type="text" name="address" placeholder="Permanent or Temporary" required>
                        </div>

                        <div class="input-field">
                            <label>Nationality</label>
                            <input type="text" name="nationality" placeholder="Enter nationality" required>
                        </div>

                        <div class="input-field">
                            <label>State</label>
                            <input type="text" name="state" placeholder="Enter your state" required>
                        </div>

                        <div class="input-field">
                            <label>District</label>
                            <input type="text" name="district" placeholder="Enter your district" required>
                        </div>

                        <div class="input-field">
                            <label>House Number</label>
                            <input type="number" name="houseNumber" placeholder="Enter block number" required>
                        </div>

                        <div class="input-field">
                            <label>Lane Number</label>
                            <input type="text" name="laneNumber" placeholder="Enter ward number" required>
                        </div>
                    </div>
                </div>

                    <div class="password details">
                    <span class="title">Password Field</span>
                    <div class="fields">
                        <div class="input-field">
                            <label>Password</label>
                            <input type="password" name="password" placeholder="Enter the Password" required>
                        </div>
                        <div class="input-field">
                            <label>Confirm Password</label>
                            <input type="password" name="confirmPassword" placeholder="Enter Confirm Password" required>
                        </div>
                    </div>

                    <div class="buttons">
                        <div class="backBtn">
                            <i class="uil uil-navigator"></i>
                            <span class="btnText">Back</span>
                        </div>
                        
                        <button class="sumbit">
                            <span class="btnText">Submit</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                    </div>
                </div> 
        </form>
    </div>


    <script src="js/signup.js"></script>
</body>
</html>