<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form POST Data Info FullName , Age </title>
</head>
<body>
    <h2>Form POST Data Info FullName , Age </h2>
    <form method="post" action="postData.jsp">
        Nhập họ và tên: <input type="text" name="fullName" /> <br/>
        Nhập tuổi: <input type="text" name="age" /> <br/>
        <input type="submit" value="Gửi dữ liệu" />
    </form>
<%
    String fullName = request.getParameter("fullName");
    String age = request.getParameter("age");
    if (fullName != null && age != null) {

%>
    <p>Họ và tên: <%= fullName.trim() %></p>
    <p>Tuổi: <%= age.trim() %></p>  
<%
    } 
%>
</body>
</html>