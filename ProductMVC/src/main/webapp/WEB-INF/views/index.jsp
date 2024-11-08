<html>
<head>
	<%@include file="./base.jsp" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<style> 
		body{
		background-image: url("https://png.pngtree.com/thumb_back/fh260/background/20190223/ourmid/pngtree-atmospheric-blue-light-effect-electronic-technology-background-backgroundlight-effect-backgroundelectronic-image_72723.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		}
		.table {
			background-color: white;
		}
		.white{
		color:white;}
		.addproduct{
		background-color: green;
		color:white;}
	</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3 white">Welcome to Product App</h1>
				<table class="table">
					  					<thead class="thead-dark">
					    <tr>
					      <th scope="col">S.No</th>
					      <th scope="col">Product Name</th>
					      <th scope="col">Description</th>
					      <th scope="col">Price</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach items="${product }" var="p">
					  		<tr>
					   	   	  <th scope="row">${p.pid }</th>
					    	  <td>${p.name }</td>
					      	  <td>${p.description }</td>
					     	  <td class="font-weight-bold">${p.price }&#8377; </td>
					     	  <td>
					     	  <a href="delete/${p.pid }"><i class="fas fa-trash-alt text-danger" style="font-size:30px;"></i>
					     	  </a>
					     	  <a href="update/${p.pid }"><i class="fas fa-highlighter" style="font-size:30px; margin-left:20px;"></i></a></td>
					  	  </tr>
					  </c:forEach>
					  	
					    
					  </tbody>
				</table>
				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success addproduct">Add Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
