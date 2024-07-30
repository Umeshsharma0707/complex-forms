<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Image Upload Form</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
  <h2 class="text-center">Upload Image</h2>
  <form action="uploadfile" method="POST" enctype="multipart/form-data" class="needs-validation" >
  	<!-- image title -->
    <div class="form-group">
      <label for="imageTitle">Image Title:</label>
      <input type="text" class="form-control" id="imageTitle" name="imageTitle" placeholder="Enter image title" required>
      <div class="invalid-feedback">Please provide a title for the image.</div>
    </div>
    <!-- image file -->
    <div class="form-group">
      <label for="imageFile">Select Image:</label>
      <input type="file" class="form-control-file" id="imageFile" name="imageFile" accept="image/*" required>
      <div class="invalid-feedback">Please select an image to upload.</div>
    </div>
    <button type="submit" class="btn btn-success">Upload</button>
  </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Custom JS for validation -->


</body>
</html>
