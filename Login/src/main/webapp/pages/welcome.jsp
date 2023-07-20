<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<center>
<table class="table" border="1px">

<tr class="success">
<th>ID</th>
<th>NAME</th>
<th>CITY</th>
<th>ADDRESS</th>
<th>EMAIL</th>
<th>PASSWORD</th>
<th>ACTION</th>
</tr>

<c:forEach var="e" items="${ss}">
<tr class="active">
<td>${e.id}</td>
<td>${e.sname}</td>
<td>${e.city}</td>
<td>${e.address}</td>
<td>${e.email}</td>
<td>${e.password}</td>
<td>
<a href="edit?id=${e.id}">Edit</a> 
<a href="del?id=${e.id}">Delete</a>
</td>
</tr>
</c:forEach>

</table>
</center>