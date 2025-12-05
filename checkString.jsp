<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài tập 3 : So sánh chuỗi equals trong JSP </title>
</head>
<body>
    <h2>Bài tập 3 : So sánh chuỗi equals trong JSP</h2>
    <form method="get" action="checkString.jsp">
        Nhập chuỗi 1: <input type="text" name="str1" /> <br/>
        Nhập chuỗi 2: <input type="text" name="str2" /> <br/>
        <input type="submit" value="So sánh" />
    </form>
<%
    String str1 = request.getParameter("str1");
    String str2 = request.getParameter("str2");
    if (str1 != null && str2 != null) {
        if (str1.equals(str2)) {
%>
    <p>Hai chuỗi bằng nhau.</p>
<%
        } else {
%>
    <p>Hai chuỗi không bằng nhau.</p>
<%
        }
    }
%>
</body>
</html>