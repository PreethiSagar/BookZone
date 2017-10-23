<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header.jsp"></jsp:include>
<div class="clear spaces10"></div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 container containerMinHeight">
	<div class="col-lg-1 col-md-1 col-sm-12 col-xs-12"></div>
	<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
		<div class="panel with-nav-tabs panel-default">
			<div class="panel-heading">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab1category" data-toggle="tab">Add Category</a></li>
					<li><a href="#tab2category" data-toggle="tab">List Category</a></li>
				</ul>
			</div>
			<div class="panel-body">
				<div class="tab-content">
					<div class="tab-pane fade in active" id="tab1category">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<form:form action="${pageContext.request.contextPath}/AddProduct" modelAttribute="product" enctype="multipart/form-data">
								<div class="clear spaces10"></div>
								<b class="formTitle" align="center">Add Product</b>
								<div class="clear spaces10"></div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="form-group">
									    <label>Product Id:</label>
										<form:input path="productId" class="form-control" placeholder="Product Id" />
									</div>
									<div class="form-group">
									    <label>Product Name:</label>
										<form:input path="productName" class="form-control" placeholder="Product Name" />
									</div>
									<div class="form-group">
									    <label>Product Price:</label>
										<form:input path="price" class="form-control" placeholder="Product Price" />
									</div>
									<div class="form-group">
									    <label>Product Stock:</label>
										<form:input path="stock" class="form-control" placeholder="Product Stock" />
									</div>
									<div class="form-group">
									    <label>Product Image:</label>
										<form:input type="file" path="pimage" />
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="form-group">
									    <label>Category Id:</label>
										<form:select path="catId" class="form-control">
											<form:option value="0" label="----- Select Category -----"></form:option>
											<form:options items="${categoryList}"/>
										</form:select>
									</div>
									<div class="form-group">
									    <label>Supplier Id:</label>
										<form:select path="supplierId" class="form-control">
											<form:option value="0" label="----- Select Supplier -----"></form:option>
											<form:options items="${supplierList}"/>
										</form:select>
									</div>
									<div class="form-group">
									    <label>Product Description:</label>
										<form:textarea path="productDesc" rows="7" class="form-control" placeholder="Product Description" />
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" align="center">
									<div class="form-group">	
									    <input type="submit" value="Add Product" class="btn btn-primary" />
									</div>
								</div>
								<div class="clear spaces5"></div>
							</form:form>
						</div>
					</div>
					<div class="tab-pane fade" id="tab2category">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 table-responsive">
							<table class="table table-hover" align="center">
								<tr class="tableHead">
									<th>Product Id</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>Stock</th>
									<th>Operation</th>
								</tr>
								<c:forEach items="${productList}" var="product">
									<tr class="tableContent">
										<td>${product.productId}</td>
										<td>${product.productName}</td>
										<td>${product.price}</td>
										<td>${product.stock}</td>
										<td>
											<a href="${pageContext.request.contextPath}/updateProduct/${product.productId}">
												<img src="${pageContext.request.contextPath}/resources/images/editIcon.png" class="iconStyle" />
											</a>
											&nbsp;&nbsp;&nbsp;
											<a href="${pageContext.request.contextPath}/deleteProduct/${product.productId}">
												<img src="${pageContext.request.contextPath}/resources/images/deleteIcon.png" class="iconStyle" />
											</a>
											&nbsp;&nbsp;&nbsp;
											<a href="${pageContext.request.contextPath}/viewProduct/${product.productId}">
												<img src="${pageContext.request.contextPath}/resources/images/viewIcon.png" class="iconStyle" />
											</a>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-1 col-md-1 col-sm-12 col-xs-12"></div>
</div>
<div class="clear spaces10"></div>
<jsp:include page="footer.jsp"></jsp:include>