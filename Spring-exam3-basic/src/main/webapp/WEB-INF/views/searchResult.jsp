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
	<h1>検索結果</h1>
	<p>product_id:${fn:escapeXml(product.getProductId())}</p>
	<p>product_name:${fn:escapeXml(product.getProductName())}</p>
	<p>price:${fn:escapeXml(product.getPrice())}</p>
	<a href="top">戻る</a>
</body>