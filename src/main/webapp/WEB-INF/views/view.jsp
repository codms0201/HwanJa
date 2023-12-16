<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.crud.patient.PatientDAO, com.crud.patient.PatientVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Page</title>
  <style>
    .name{
      text-align: center;
    }
    .form{
      background-color: white;
      margin: auto;
      width: 50%;
      border: 2px solid cornflowerblue;
    }
    .back{
      background-color: lightblue;
    }
  </style>
</head>
<body class = "back">
<h1 class= "name">환자 정보 상세 보기</h1>
<div class ="form">
<p>이름: ${patientVO.name}</p>
<p>나이: ${patientVO.age}</p>
<p>성별: ${patientVO.gender}</p>
<p>전화번호: ${patientVO.phone}</p>
<p>주소: ${patientVO.address}</p>
<p>증상: ${patientVO.sick}</p>
<p>처방: ${patientVO.heal}</p>
</div>


<a href ="../list">Back</a>
</body>
</html>
