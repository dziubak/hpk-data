<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Відділення</title>
</head>
<body>

<table class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th scope="col"><a href="/" class="btn btn-outline-info btn-sm btn-block">Main</a></th>
        <th scope="col">Відділення</th>
        <th scope="col"></th>
        <th scope="col" colspan="2"><a href="/department/create" class="btn btn-outline-success btn-sm btn-block">Добавити</a></th>
    </tr>
    </thead>
    <thead class="thead-light">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Назва</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${departments}" var="department">
        <tr>
            <td scope="row">${department.id}</td>
            <td>${department.name}</td>
            <td><a href="/department/update/${department.id}" class="btn btn-outline-warning btn-sm">Оновити</a> </td>
            <td><a href="/department/delete/${department.id}" class="btn btn-outline-danger btn-sm" onclick="return confirm('Ви впевнені?')">Видалити</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>