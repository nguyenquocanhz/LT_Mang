<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài tập 5 : Kiểm tra bẫy lỗi Check Null ,isEmpty </title>
</head>
<body>
    <h2>Bài tập 5 : Kiểm tra bẫy lỗi Check Null ,isEmpty </h2>
    <form method="post" action="bt5.jsp">
       Nhập tên của bạn : <input type="text" name="fullName" /> <br/>
        <input type="submit" value="Kiểm tra" />
    </form>
<%
    String fullName = request.getParameter("fullName");
    if (fullName != null && !fullName.isEmpty()) {
%>
    <p>Xin chào , <%= fullName.trim() %></p>
<%
    } else {
%>
    <p>Vui lòng nhập tên của bạn!</p>
<%
    }
%>
</body>
</html>
