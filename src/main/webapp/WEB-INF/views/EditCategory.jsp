<%@page import="com.google.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | Edit Category</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>Category</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Category</li>
				<li class="breadcrumb-item active">Edit</li>
			</ol>
		</nav>
	</div>



	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Edit Category</h5>


						<form action="updatecategory" method="post">
							<input type="hidden" name="categoryId" value="${categoryBean.categoryId}"/>
							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">Category
									Name</label>
								<div class="col-sm-6">
									<input type="text" name="categoryName" value="${categoryBean.categoryName}" class="form-control">
								</div>
							</div>



							<div class="row mb-3">
								<div class="col-2"></div>
								<div class="col-2">
									<button class="btn btn-primary w-100" type="submit">Update
										Category</button>

								</div>
								<div class="col-2">
									<a class="btn btn-danger w-100" href="listcategories" type="button">Cancel</a>

								</div>

							</div>



						</form>



						<!-- Table with stripped rows -->

						<br> <a href="listcategories"> <i
							class="bi bi-arrow-left"></i> BACK
						</a>

					</div>
				</div>

			</div>
		</div>
	</section>
	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>


</body>
</html>