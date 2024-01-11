<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title> Form</title>
</head>

<body class="" style="background: #cd1d46;">

    <div class="container mt-4">
        <div class="row">     
            <div class="col-md-6 offset-md-3">
            	<div class="card">
                    <div class="card-body">
                        <h3 class="text-center">Complex Form</h3>
						<div class="alert alert-danger" role="alert">
							<form:errors path="user.*"></form:errors>
						</div>
						
                        <!-- Data Form -->
                        <form action="handleform" method="post">

                            <div class="form-group">
                                <label for="name">Your Name</label>
                                <input type="text" class="form-control" name="name" id="name" placeholder="Enter Your Name">
                            </div>
                            <hr/>
                            
                            <div class="form-group">
                                <label for="id">Your ID</label>
                                <input type="text" class="form-control" name="id" id="id" placeholder="Enter Your ID">
                            </div>
                            <hr/>
                            <div class="form-group">
                                <label for="dob">Date of Birth</label>
                                
                                <input type="text" class="form-control" name="dob" id="dob" placeholder="mm/dd/yyyy"/>
                            </div>
							<hr/>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Select Courses</label>
                                <select name="courses" id="courses" class="form-control" multiple>
                                    <option value="Java">Java</option>
                                    <option value="C++">C++</option>
                                    <option value="Python">Python</option>
                                    <option value="Ruby on Rails">Ruby on Rails</option>
                                    <option value="PHP">PHP</option>
                                </select>
                            </div>
                            <hr/>
                            <div class="form-group">
                                <span class="mr-3">Select Gender</span>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input" value="male" name="gender" id="inlineRadio1">
                                    <label for="form-check-label" for="inlineRadio1">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input" value="female" name="gender" id="inlineRadio2">
                                    <label for="form-check-label" for="inlineRadio2">Female</label>
                                </div>
                            </div>
							<hr/>
                            <div class="form-group">
                                <label for="">Select Category</label>
                                <select name="stype" class="form-control">
                                    <option value="oldstudent">Old Student</option>
                                    <option value="newstudent">New Student</option>
                                </select>
                            </div>
                            <hr/>							
							<div class="card">
								<div class="card-body">
								<p>Your Address</p><hr/>
									<div class="form-group">
                                		<input type="text" class="form-control" name="address.house" id="address.house" placeholder="Enter Your Home address">
                            		</div>
                            
                            		<div class="form-group">
                                		<input type="text" class="form-control" name="address.city" id="addresscity" placeholder="Enter Your Location address">
                            		</div>
								</div>
							</div>
							<hr/>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js (Optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>