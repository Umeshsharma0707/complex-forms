<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap Form</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="<c:url value="/resources/css/style.css" />"  rel="stylesheet">
  <script type="text/javascript" src='<c:url value="/resources/js/script.js" />'></script>
</head>
<body>

<!--  <img alt="img" src="<c:url value="/resources/image/image.jfif" />" width="100%" height="600px">  -->

<div class="container mt-5 col-6">
<h1 style="text-align: center">Complex form</h1>
<hr>
<div class="alert alert-danger" role="alert">
  
  <form:errors path="student.*" />
  
</div>
  <form action="processForm" method="Post">
    <!-- Name -->
    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name">
    </div>
    
     <!-- DOB -->
    <div class="form-group">
      <label for="dob">DOB</label>
      <input type="text" name="dob" class="form-control" id="dob" placeholder="Enter your DOB">
    </div>
    
    
    <!-- Gender -->
    <div class="form-group">
      <label>Gender</label>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gender" id="male" value="male">
        <label class="form-check-label" for="male">Male</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gender" id="female" value="female">
        <label class="form-check-label" for="female">Female</label>
      </div>
    </div>
    
    <!-- Select Options -->
    <div class="form-group">
      <label for="options">Select Courses</label>
      <select class="form-control" id="options" name="course">
        <option value="java">Java</option>
        <option value="python">Python</option>
        <option value="dotnet">DotNet</option>
        <option value="kotlin">Kotlin</option>
      </select>
    </div>
    
     <!-- Select Options -->
    <div class="form-group">
      <label for="options">Student Type</label>
      <select class="form-control" id="options" name="studentType">
        <option value="old student">old student</option>
        <option value="new student">new student</option>
      </select>
    </div>
    
    <!-- Phone -->
    <div class="form-group">
      <label for="phone">Phone</label>
      <input type="tel" class="form-control" name="contact" id="phone" placeholder="Enter your phone number">
    </div>
    
    <div class="card mb-2">
    	<div class="card-body">
    		 <!-- Street -->
    <div class="form-group">
      <label for="street">Street</label>
      <input type="text" class="form-control" 
      name="address.street" 
      id="street" 
      placeholder="Enter your street address">
    </div>

    <!-- City -->
    <div class="form-group">
      <label for="city">City</label>
      <input type="text" class="form-control" 
      name="address.city"
      id="city" 
      placeholder="Enter your city">
    </div>

    <!-- Zip Code -->
    <div class="form-group">
      <label for="zipcode">Zip Code</label>
      <input type="text" class="form-control"
      name="address.zipCode"
       id="zipCode" 
       placeholder="Enter your zip code">
    </div>
    	</div>
    </div>
    
    <!-- Submit Button -->
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
