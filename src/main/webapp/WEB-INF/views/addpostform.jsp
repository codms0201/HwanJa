<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body class="back">

<h1 class="name">신규 환자 등록</h1>
<form class="form" action="addok" method="post">
<table id ="edit">
    <tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
    <tr><td>나이:</td><td><input type="text" name="age"/></td></tr>
    <tr><td>성별:</td><td><input type="text" name="gender"/></td></tr>
    <tr><td>전화번호:</td><td><input type="text" name="phone"/></td></tr>
    <tr><td>주소:</td><td><input type="text" name="address"/></td></tr>
    <tr><td>증상:</td><td><textarea cols="50" rows="3" name="sick"></textarea></td></tr>
    <tr><td>처방:</td><td><textarea cols="50" rows="3" name="heal"></textarea></td></tr>
</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>