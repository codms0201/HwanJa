<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.crud.patient.PatientDAO, com.crud.patient.PatientVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Page</title>
</head>
<body>

<h1>View Page</h1>
<p>TItle: ${boardVO.title}</p>
<p>Singer: ${boardVO.singer}</p>
<p>Year: ${boardVO.year}</p>
<p>Category: ${boardVO.category}</p>
<p>Producer: ${boardVO.producer}</p>
<p>Nationality: ${boardVO.nationality}</p>
<p>Link: ${boardVO.link}</p>
<p>Content: ${boardVO.content}</p>



<a href ="../list">Back</a>
</body>
</html>
