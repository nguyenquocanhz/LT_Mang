<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String fullName = request.getParameter("fullName");
if (fullName == null || fullName.isEmpty()) {
    fullName = "Guest";
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài tập 1 : Cách sử dụng request.getParameter() trong JSP</title>
</head>
<body>
    <h2>Bài tập 1 : Cách sử dụng request.getParameter() trong JSP</h2>
    <form action="info.jsp" method="get">
        Nhập họ và tên: <input type="text" name="fullName" />
        <input type="submit" value="Gửi thông tin" />
    </form>
    <p>Xin chào, <%= fullName %>!</p>
</body>
</html>