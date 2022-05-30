<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>演習課題3 発展問題 トップ画面</title>
</head>
<body>
	<h1>検索条件または登録情報を入力してください</h1>
	<form:form action="result" modelAttribute="top" method="post">
		<p>
			product_name:
			<form:input path="productName" />
		</p>
		<p>
			price:
			<form:input path="price" />
		</p>
		<form:button name="search">検索</form:button>
		<form:button name="insert">登録</form:button>
	</form:form>
</body>