<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ page isELIgnored="false" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Section</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-134415110-1', 'auto');
ga('send', 'pageview');
</script>

<script>
	$(document).ready(function() {
		
		$(".add-projects-form").click(function() {

			var title = $("input#title").val();
			var description = $("input#description").val();
			var image = $("input#image").val();
			var content = $("input#content").val();
			var date = $("input#date").val();
			var client = $("input#client").val();
			var category = $("input#category").val();

			var dataObject = {title: title, description: description, image: image, content: content, date: date, client: client, category: category};

			console.log(dataObject);
			
			$.ajax({
			    type: "POST",
			    dataType: 'json',
			    contentType: 'application/json',
			    url: "/projects",
			    data: JSON.stringify(dataObject),
			    success: function() {
			      $('#contact_form').html('<div class="alert alert-success alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Project is Added</div>');
			    },
			    error: function(){
			    	$('#contact_form').html('<div class="alert alert-danger alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Failed!</strong> Some Field is missing.</div>');
				}
			  });
		});
	});
</script>

<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 1500px
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<h4>Admin Panel</h4>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="/admin">Projects</a></li>
				</ul>
				<br>
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Search Projects.."> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>

			<div class="col-sm-9">
			
			<h4>
				<small>Recent Projects</small>
			</h4>
			<c:forEach var="project" items="${allProjects}">
				<hr>
				<h2>${project.title }</h2>
				<h5>
					<span class="glyphicon glyphicon-time"></span> Post by Mani,
					${project.date }.
				</h5>
				<h5>
					<span class="label label-danger">${project.client }</span> <span
						class="label label-primary">${project.category }</span>
				</h5>
				<br>
				<p>${project.content }</p>
				<br>
			</c:forEach>
			
				
				<br>
				<hr>
				<div>
				<div id="contact_form"></div>
				</div>
				<form class="form-horizontal" action="">
					<h2>Add a Project</h2>

					<div class="form-group">
						<label class="control-label col-sm-2" for="title">Title:</label>
						<div class="col-md-5">
							<input type="text" class="form-control" id="title" name="title">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="description">Description:</label>
						<div class="col-md-5">
							<input type="text" class="form-control" id="description"
								name="description">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="image">Image:</label>
						<div class="col-md-5">
							<input type="text" class="form-control" id="image" name="image">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="content">Content:</label>
						<div class="col-md-5">
							<input type="text" class="form-control" id="content"
								name="content">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="date">Date:</label>
						<div class="col-md-5">
							<input type="text" class="form-control" id="date" name="date">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="client">Client:</label>
						<div class="col-md-5">
							<input type="text" class="form-control" id="client" name="client">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="category">Category:</label>
						<div class="col-md-5">
							<input type="text" class="form-control" id="category"
								name="category">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-md-5">
							<button type="button" class="btn btn-success add-projects-form">Submit</button>
						</div>
					</div>
				</form>

				<br>
				<br>
			</div>
		</div>
	</div>

	<footer class="container-fluid">
		<p>Copyright &copy; New Client 2019</p>
	</footer>

</body>
</html>