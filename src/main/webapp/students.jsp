<%-- <%@ taglib uri="jakarta.tags.core" prefix="c" %> --%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Student Management System</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/students">Student Management</a>
      </li>
    </ul>
  </div>
</nav>
	<div class="container">
		<div class="row">
			<h1>List Students</h1>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<a href="/students/new" class="btn btn-primary btn-sm mb-3">Add Students</a>
			</div>
		</div>
		<table class="table table-striped table-bordered">
			<thead class="table-dark">
				<tr>
 					<th>Id</th> 
					<th>Name</th>
					<th>DateOfBirth</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Mobile</th>
					<th>Address</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${students}" var="student">
				<tr>
					<td>${student.id}</td>
					<td>${student.firstname}   ${student.lastname}</td>
					<td><fmt:formatDate type = "date" dateStyle = "short" timeStyle = "short" value = "${student.getDt()}" /></td>
					<td>${student.age}</td>
					<td>${student.gender}</td>
					<td>${student.mobile}</td>
					<td>${student.address1}   ${student.address2}</td>
					<td>${student.email}</td>
					<td><a href="/students/edit/${student.id}" class="btn btn-primary">Update</a>
					<a href="/students/${student.id}" class="btn btn-danger">Delete</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>