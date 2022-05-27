<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>演習課題3 基本問題 トップ画面</title>
</head>
<body>
	<h1>検索条件を入力してください</h1>
	<form:form action="result" modelAttribute="top" method="post">
		<p>
			product_id:
			<form:input path="productId" />
		</p>
		<form:button>検索</form:button>
	</form:form>
</body>