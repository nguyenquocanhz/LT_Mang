<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // get parameter 'name' from request
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
    <title>Document</title>
</head>
<body>
    <p>Hello, JSP!</p>
    <p>Welcome, <%= fullName %>!</p>
</body>
</html>