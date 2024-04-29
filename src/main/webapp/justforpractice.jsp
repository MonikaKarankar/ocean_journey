<!-- Modal 
		<div class="modal fade" id="exampleModal1<%=cruise.getId() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
		                    <label for="fName" class="form-label">CruiseName:</label>
		                    <input type="text" id="fname" name="fname" class="form-input" value="<%=cruise.getCruiseName() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="lName" class="form-label">Cruise Id:</label>
		                    <input type="text" id="lName" name="lName" class="form-input" value="<%= cruise.getCruiseId()%>" readonly>
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="phone" class="form-label">OwnerName:</label>
		                    <input type="tel" id="phone" name="phone" class="form-input" value="<%=cruise.getOwnerName() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="address" class="form-label">Cruise Size:</label>
		                    <input type="text" id="text" name="text" class="form-input" value="<%=cruise.getSize() %>" readonly>
		                
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="poiletId" class="form-label">Cruise Speed:</label>
		                    <input type="text" id="poiletId" name="poiletId" class="form-input" value="<%=cruise.getSpeed() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="state" class="form-label">Passenger Capacity:</label>
		                    <input type="text" id="state" name="state" class="form-input" value="<%=cruise.getPassengerCapacity() %>" readonly>
		                
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="email" class="form-label">Baggage Capacity:</label>
		                    <input type="email" id="email" name="email" class="form-input" value="<%=cruise.getBaggageCapacity() %>" readonly>
		                </div>
		                <div style="flex-basis: 50%;">
		                    <label for="position" class="form-label">Total Capacity:</label>
		                    <input type="text" id="position" name="position" class="form-input" value="<%=cruise.getTotalCapacity() %>" readonly>
		                
		                </div>
		            </div>
		            <div class="form-row" style="margin-bottom: 10px;">
		                <div style="flex-basis: 50%;">
		                    <label for="age" class="form-label">Join Date:</label>
		                    <input type="text" id="age" name="age" class="form-input" value="<%=cruise.getJoinDate() %>" readonly>
		                </div>
		                 <div style="flex-basis: 50%;">
		                    <label for="adhar" class="form-label">Time:</label>
		                    <input type="text" id="adhar" name="adhar" class="form-input" value="<%=cruise.getTime() %>" readonly>
		               
		                </div>
		            </div>
		            
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
        -->
        
		
		
		<!-- Update Date -->
		
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal<%= cruise.getId() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Update Cruise</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		       <form action="cruiseupdate" method="post">
	          <div class="form-group">
	            <label for="cruiseName">Cruise Name:</label>
	            <input type="text" class="form-control" name="cruiseName" value="<%=cruise.getCruiseName() %>" required>
	          </div>
	          <div class="form-row">
	            <div class="form-group col-md-6">
	              <label for="cruiseId">Cruise ID:</label>
	              <input type="text" class="form-control" name="cruiseId" value="<%= cruise.getCruiseId() %>" required readonly>
	            </div>
	            <div class="form-group col-md-6">
	              <label for="ownerName">Owner Name:</label>
	              <input type="text" class="form-control" name="ownerName" value="<%= cruise.getOwnerName() %>" required>
	            </div>
	          </div>
	          <div class="form-row">
	            <div class="form-group col-md-6">
	              <label for="size">Size:</label>
	              <input type="text" class="form-control" name="size" value="<%= cruise.getSize() %>" required>
	            </div>
	            <div class="form-group col-md-6">
	              <label for="speed">Speed:</label>
	              <input type="text" class="form-control" name="speed" value="<%= cruise.getSpeed() %>" required>
	            </div>
	          </div>
	          <div class="form-row">
	            <div class="form-group col-md-6">
	              <label for="passengerCapacity">Passenger Capacity:</label>
	              <input type="text" class="form-control" name="passengerCapacity" value="<%= cruise.getPassengerCapacity() %>" required>
	            </div>
	            <div class="form-group col-md-6">
	              <label for="baggageCapacity">Baggage Capacity:</label>
	              <input type="text" class="form-control" name="baggageCapacity" value="<%= cruise.getBaggageCapacity() %>" required>
	            </div>
	          </div>
	          <div class="form-row">
	            <div class="form-group col-md-6">
	              <label for="totalCapacity">Total Capacity:</label>
	              <input type="text" class="form-control" name="totalCapacity" value="<%= cruise.getTotalCapacity() %>" required>
	            </div>
	            <div class="form-group col-md-6">
	              <label for="joinDate">Join Date:</label>
	              <input type="date" class="form-control" name="joinDate" value="<%= cruise.getJoinDate() %>" required>
	            </div>
	          </div>
	          <div class="form-group">
	            <label for="time">Time:</label>
	            <input type="time" class="form-control" name="time" value="<%= cruise.getTime() %>" required>
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
		