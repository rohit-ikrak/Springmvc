<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" >
	<script src="<c:url value="/resources/js/script.js" />"></script>
	
    <title>Search Mania</title>
  </head>
  <body>
    
    <div class="container">
    
    	<div class="card mx-auto mt-5 bg-primary" style="width:50%;">
    		<div class="card-body py-5">
    		
    			<h3 class="text-center text-white" style="text-tranxform: uppercase;">Google Search Box</h3>
				<form action="search" class="mt-3">
					<div class="form-group">
						<input type="text" name="querybox" placeholder="Enter your search query" class="form-control" />
					</div>
					<div class="container text-center bg-info">
						<button class="btn btn-outline-Light">Search</button>
					</div>
				</form>
    		</div>
    		<img alt="my image" src="<c:url value="/resources/images/view.jpg" />" /> 
    	</div>
    </div>
    
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    
  </body>
</html>