<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">


<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>BookStore-${title}</title>


<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
</script>
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap DataTables core CSS -->
<link href="${css}/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>


	<!-- navigation -->
	<%@include file="./shared/navbar.jsp"%>


	<!-- Page Content -->

	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>

	<c:if test="${userClickViewProduct == true }">
		<%@include file="singleProduct.jsp"%>
	</c:if>

	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>

	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>

	<c:if test="${userClickManageBook == true }">
		<%@include file="manageBooks.jsp"%>
	</c:if>


	<!-- /.container -->

	<!-- Footer comes here -->
	<%@include file="./shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>



	<!-- For Datatable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>
	<script src="${js}/dataTables.bootstrap4.min.js"></script>

	<script src="${js}/bootbox.min.js"></script>

	<script type="text/javascript">
		$("#productsTable").DataTable()
	</script>

	<!-- Self coded JavaScript -->
	<script src="${js}/myapp.js"></script>


</body>

</html>
