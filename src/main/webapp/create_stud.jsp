<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script type="text/javascript">
(function(){
	$('#datepicker').datepicker({dateformat:"dd-mm-yyyy"});
});
</script>
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
			<h1 class="text-center">Create New Student</h1>
			<div class="card-body">
				<form onsubmit="return Validation();" action="/students" object="${student}" name="regform" method="post">
					<div class="form-group">
						<label>Student First Name</label>
						<input type="text" name="firstname" field="firstname" class="form-control" placeholder="Enter First Name">
					</div>
					<div class="form-group">
						<label>Student Last Name</label>
						<input type="text" name="lastname" field="lastname" class="form-control" placeholder="Enter Last Name">
					</div>
					<div class="form-group">
						<label>Student BirthDate</label>
						<input type="date" class="form-control" field="dt" id="datepicker"  name="dt" placeholder="Select Date Of Birth">
					</div>
					<div class="form-group">
						<label>Student Email</label>
						<input type="text" name="email" field="email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Student Mobile</label>
						<input type="number" name="mobile" field="mobile" class="form-control" placeholder="Enter mobile">
					</div>
					<div class="form-group">
						<label>Student Address-1</label>
						<input type="text" name="address1" field="address1" class="form-control" placeholder="Enter address1">
					</div>
					<div class="form-group">
						<label>Student Address-2</label>
						<input type="text" name="address2" field="address2" class="form-control" placeholder="Enter address2">
					</div>
					<div class="form-group">
						<label>Student Age</label>
						<input type="number" name="age" field="age" class="form-control" placeholder="Enter age">
					</div>
					<div class="form-group">
						<label>Student Gender</label>
						<input type="radio" name="gender" value="male" field="gender" class="form-control">Male
						<input type="radio" name="gender" value="female" field="gender" class="form-control">Female
					</div>
					<div class="box-footer">
						<input type="submit" class="btn btn-primary" value="Submit"/>
						
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<script type="text/javascript" >
function Validation() 
{
	let fnm= document.forms["regform"]["firstname"].value;
	let lnm= document.forms["regform"]["lastname"].value;
	let dob= document.forms["regform"]["dt"].value;
	let add1= document.forms["regform"]["address1"].value;
	let mail= document.forms["regform"]["email"].value;
	let gen= document.forms["regform"]["gender"].value;
	let mob= document.forms["regform"]["mobile"].value;
	var add2= document.forms["regform"]["address2"].value;
	let age= document.forms["regform"]["age"].value;
	var regPhone=/^\d{10}$/;
	var regmail=/^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/;
	if(fnm == "" )
	{
		alert("Name must be filled out");
		document.forms["regform"]["firstname"].focus();	
		return false;
	}
	if(lnm == "") {
		alert("LastName Must be Filled Out"); 
		document.forms["regform"]["lastname"].focus();	
		return false;
	}
	if(dob == "") {
		alert("Date Must Be Enter");
		document.forms["regform"]["dt"].focus();
		return false;
	}
	if (mail == "" || !regmail.test(mail)) 
	{
	    alert("Please enter a valid email address");
	    document.forms["regform"]["email"].focus();
	    return false;
	}
	if (mob == "" || !regPhone.test(mob)) 
	{
	    alert("Please enter valid Mobile number");
	    document.forms["regform"]["mobile"].focus();
	    return false;
	}
	if (add1 == "" ) 
	{
	    alert("Address must be filled out");
	    document.forms["regform"]["address1"].focus();
	    return false;
	}
	if(add2 == "" )
	{
		alert("Address must be filled out");
	    document.forms["regform"]["address2"].focus();
	 	return false;	
    }
	if(age == "") {
		alert("Age Must Be Enter");
		document.forms["regform"]["age"].focus();
		return false;
	}
	var getSelectedValue = document.querySelector( 'input[name="gender"]:checked'); 
	if(getSelectedValue==null)
	{
		alert("Pleased Select Gender:");
		document.forms["regform"]["gender"][0].checked=true;
		return false;
	}
	
	else {
		alert("Insert Data Successfully..."+fnm);
	}
}
</script>