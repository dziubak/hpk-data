<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Group show</title>
</head>
<body>
<a href="/group/create">Create group</a>
<table>
    <tr>
        <td colspan="5"><h1>Information</h1></td>
    </tr>
    <tr>
        <td>Id</td>
        <td>TeacherId</td>
        <td>Name</td>
        <td>Course</td>
        <td>Department</td>
    </tr>
    <c:forEach items="${groups}" var="group">
    <tr>
        <td>${group.id}</td>
        <td>${group.teacherId}</td>
        <td>${group.name}</td>
        <td>${group.course}</td>
        <td>${group.department}</td>
        <td><a href="/group/delete/${group.id}" onclick="return confirm('Are you sure?')">Delete</a></td>
        <td><a href="/group/update/${group.id}">Update</a></td>
    </tr>
    </c:forEach>
</body>
</html>