<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Group update</title>
</head>
<body>
<form action="/group/update"  method="POST">
    <h1>Group update</h1>
    <h3>Curator</h3>
    <input type="text" name="teacherId" value="${group}">
    <h3>Name</h3>
    <input type="text" name="name" value="${group}">
    <h3>Course</h3>
    <select name = "course">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
    </select>
    <h3>Department</h3>
    <input type="text" name="department" value="${group}">
        <input type="submit" value="Update">
        <form/>
</body>
</html>