<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Recipe name: ${recipe.name}</h3>
	<p>Cook time: ${recipe.cookTime}</p>
	<p>Country name: ${recipe.country.name}</p>
	<c:forEach items="${recipe.ingredientAndAmound}"
		var="ingredientAndAmound">
		<p>${ingredientAndAmound.amound }
			${ingredientAndAmound.measuringSystem.name}
			${ingredientAndAmound.ingredient.name}</p>
	</c:forEach>
	<a href='<c:url value="ingredient/${recipe.id}"></c:url>'>Add ingredient</a>
</body>
</html>