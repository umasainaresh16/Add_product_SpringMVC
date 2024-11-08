<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<style> 
		body{
		background-image: url("https://media.istockphoto.com/id/842703120/vector/luxury-gold-studio-room-background-with-spotlights-well-use-as-business-backdrop-template.jpg?s=612x612&w=0&k=20&c=xapeGPi5Tq3AHSUFe-kMPGEBc-ynYBLoJscfG2YOZd0=");
		background-repeat: no-repeat;
		background-size: cover;
		}
		label{
		font-size: 18px;
		font-weight: 520;
		}
</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Product Details</h1>
				
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
					<input type="hidden" value="${product.pid }" name="pid">
					<div class="form-group">
						<label for="name">Product Name</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Enter the product name here" value="${product.name }">
					</div>
					
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" id="description" name="description" rows="5" placeholder="Enter the product name here">${product.description}</textarea>
					</div>
					
					<div class="form-group">
						<label for="price">Product Price</label>
						<input type="text" class="form-control" id="price" name="price" placeholder="Enter the product name here" value="${product.price }">
					</div>
					
					<div class="container-text-center">
						<a href="${pageContext.request.contextPath }/"
						class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>