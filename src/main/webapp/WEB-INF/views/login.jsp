<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <style>
    img, label { display:inline-block;}
    label{ width:130px}
    button{ background-color:blue; color:white;font-size:15px}
    .form{
      background-color: white;
      margin: auto;
      width: 50%;
      border: 2px solid cornflowerblue;
      text-align:center;
      padding-top:100px;
      height: 30%;
    }
    .back{
      background-color: lightblue;
    }
  </style>
</head>
<body class="back">
<div class="form">
  <h1>로그인 정보 입력</h1>
  <form method="post" action="loginOk">
    <div><label>User ID: </label><input type='text' name='userid' /></div>
    <div><label>Password: </label>
      <input type='password' name='password' /></div>
    <br>
    <button type='submit'>login</button>
  </form>
</div>
</body>
</html>