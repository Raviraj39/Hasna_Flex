<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HANSA-FLEX Shop Master | Homepage</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
		integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
		rel="stylesheet">
	<link rel="stylesheet" href="./css/home.css">
</head>
<body>
	<nav>
		<div class="container  py-3 d-flex justify-content-between ">
			<div class="mt-3">
				<img src="./images/logo-hansaflex.svg" alt="" width="200px">
			</div>
			<div class="">
				<div class=" d-flex align-items-center justify-content-around flex-row">
					<div class="px-3">
						<p class="small-top-text"><i class="fa-solid fa-globe"></i>
							English (Germany)</p>
					</div>
					<div class="px-3">
						<p class="small-top-text"><i class="fa-solid fa-magnifying-glass-location"></i>
							Store finder</p>
					</div>
					<div class="px-3">
						<p class="small-top-text"><i class="fa-regular fa-comment-dots"></i>
							Help & contact</p>
					</div>
				</div>

			</div>

	</nav>
	<div class=" me-3 ">
		<div class="login-text container">
			<p class="d-flex  justify-content-end me-3">

				<button class="btn  " type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample"
					aria-expanded="false" aria-controls="collapseExample">
					<i class="fa-solid fa-user"></i>
					login </button>
			</p>

		</div>
	</div>

	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container align-items-center flex-row">
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav me-auto mb-2 my-0 mb-lg-0">
					<li class="nav-item my-0">
						<a class="nav-link" href="#">Product</a>
					</li>
					<li class="nav-item my-0">
						<a class="nav-link" href="#">About</a>
					</li>
				</ul>
			</div>
			<div>
				<div class="nav-item my-0">
					<a class="nav-link mt-2" href="#">
						<p class="login-text">Enter search term <i class="fa-solid fa-magnifying-glass"></i></p>
					</a>
				</div>
			</div>
		</div>
	</nav>
	<div class="collapse  container" id="collapseExample">
		<div class="card card-body border-0">
			<div class="container row">
				<div class="col-6">
					<h2 class="login-text">LOGIN</h2>
					<form action="Login" method="post">
						<div class="row">
							<div class="mb-3 col-6">
								<label for="disabledSelect" class="form-label login-text">E-mail</label>
								<input type="email" class="form-control login-text" name="email" id="">
							</div>

							<div class="mb-3 col-6">
								<label for="disabledSelect" class="form-label login-text">Password</label>
								<input type="password" class="form-control login-text" name="password">
							</div>
							<div>
								<label for="" class="form-label login-text">
									Have you forgotten your password?
								</label>
							</div>

							<button class="login-btn col-6 submit">LOG IN</button>
							<% 
					String msg=request.getParameter("msg");

					if("done".equals(msg)){
				%>
	
				<p class="alert">login successfully!!!</p>
				
				<% }%>
				<%
				if("wrong".equals(msg)){
				%>
				
			<p class="alert">Some thing went wrong! Try Again!</p>
				
				<% }%>
						</div>
					</form>
				</div>
				<div class="col-6">
					<div class="">
						<h2 class="login-text">
							Are you a new customer?
						</h2>
						<p class="login-text">Register and get many benefits:</p>
						<ul class="list-register list-unstyled">
							<li><i class="fa-solid fa-check"></i>Checking the product availability </li>
							<li><i class="fa-solid fa-check"></i>Fast reordering & order history </li>
							<li><i class="fa-solid fa-check"></i>Personal product recommendation </li>
							<li><i class="fa-solid fa-check"></i>Payment by invoice </li>
						</ul>
						<!-- Button trigger modal -->
						<button type="button" class=" register-btn btn col-6" data-bs-toggle="modal"
							data-bs-target="#exampleModal">REGISTER NOW</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="exampleModalLabel">Register</h1>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>
									<div class="modal-body">

										<form action="Register" method="post">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Name</label>
												<input type="text" class="form-control" id="exampleInput" name="name" />
											</div>
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Email
													address</label>
												<input type="email" class="form-control" id="exampleInputEmail1"
													aria-describedby="emailHelp" name="email" />

											</div>
											<div class="mb-3">
												<label for="exampleInputPassword1" class="form-label">Password</label>
												<input type="password" class="form-control" id="exampleInputPassword1"
													name="password" />
											</div>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="button submit" class="btn btn-primary">Register </button>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>




	<section>
		<div class="hero-container">
			<div class="d-flex align-items-center justify-content-end flex-column h-100 text-white ">
				<h1>YOUR HANSA-FLEX ONLINE-SHOP</h1>
				<p>Choose from over 60,000 articles and always find exactly the right product for your needs. We stock
					the
					full range.</p>
			</div>
		</div>
	</section>



	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>