<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>

</style>
</head>
<body>
<center>
<form action="next" style="border:1px solid #ccc" method="post">
<div class="container">
<h1>Sign Up</h1><br><br>
<div class="form-group row">
<label for="firstName" class="col-sm-2 col-form-label">FirstName</label>
<div class="col-sm-7">
<input type="text" class="form-control" name="sname"placeholder="Enter your name">
</div>
</div>

<div class="form-group row">
<label for="city" class="col-sm-2 col-form-label">City</label>
<div class="col-sm-7">
<input type="text" class="form-control" name="City"placeholder="Enter your City">
</div>
</div>

<div class="form-group row">
<label for="Address" class="col-sm-2 col-form-label">Address</label>
<div class="col-sm-7">
<input type="text" class="form-control" name="Address"placeholder="Enter your Address">
</div>
</div>

<div class="form-group row">
<label for="Email" class="col-sm-2 col-form-label">Email</label>
<div class="col-sm-7">
<input type="email" class="form-control" name="Email"placeholder="Enter your Email">
</div>
</div>

<div class="form-group row">
<label for="Email" class="col-sm-2 col-form-label">Password</label>
<div class="col-sm-7">
<input type="Password" class="form-control" name="Password"placeholder="Enter your Password">
</div>
</div>

 <button type="submit" class="btn btn-primary">Sign Up</button>
</form>
</center>
</body>
</html>