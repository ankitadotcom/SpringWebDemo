<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<br><br><br>
<div class="container">
	<div class="row">
		<div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
			<h1 class="text-center">Update Student</h1>
			<div class="card-body">
				<form action="/students/${student.id}" object="${student}" method="post">
					<div class="form-group">
						<label>Student First Name</label>
						<input type="text" name="firstname" value="${student.firstname}" class="form-control">
					</div>
					<div class="form-group">
						<label>Student Last Name</label>
						<input type="text" name="lastname" value="${student.lastname}" class="form-control" placeholder="Enter Last Name">
					</div>
					<div class="form-group">
						<label>Student BirthDate</label>
						<input type="date" class="form-control" field="dt" id="datepicker"  name="dt" value="${student.dt}">
					</div>
					<div class="form-group">
						<label>Student Email</label>
						<input type="text" name="email" value="${student.email}" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Student Mobile</label>
						<input type="number" name="mobile" value="${student.mobile}" class="form-control" placeholder="Enter mobile">
					</div>
					<div class="form-group">
						<label>Student Address-1</label>
						<input type="text" name="address1" value="${student.address1}" class="form-control" placeholder="Enter address1">
					</div>
					<div class="form-group">
						<label>Student Address-2</label>
						<input type="text" name="address2" value="${student.address2}" class="form-control" placeholder="Enter address2">
					</div>
					<div class="form-group">
						<label>Student Age</label>
						<input type="number" name="age" value="${student.age}" class="form-control" placeholder="Enter age">
					</div>
					<div class="form-group">
						<label>Student Gender</label>
						<input type="radio" name="gender" value="male" <c:if test="${student.gender=='male'}">checked</c:if> class="form-control">Male
						<input type="radio" name="gender" value="female" <c:if test="${student.gender=='female'}">checked</c:if> class="form-control">Female
					</div>
					<div class="box-footer">
						<button typ="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>