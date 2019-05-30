<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Викладачі</title>
</head>
<body>

<table class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th scope="col"><a href="/" class="btn btn-outline-info btn-sm btn-block">Main</a></th>
        <th scope="col">Викладачі</th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col" colspan="2"><a href="/teacher/create" class="btn btn-outline-success btn-sm btn-block">Добавити</a></th>
    </tr>
    </thead>
    <thead class="thead-light">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Прізвище</th>
        <th scope="col">Ім'я</th>
        <th scope="col">По-батькові</th>
        <th scope="col">Інфо</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${teachers}" var="teacher">
        <tr>
            <td scope="row">${teacher.id}</td>
            <td>${teacher.surname}</td>
            <td>${teacher.name}</td>
            <td>${teacher.middleName}</td>
            <td>${teacher.info}</td>
            <td><a href="/teacher/update/${teacher.id}" class="btn btn-outline-warning btn-sm">Оновити</a> </td>
            <td><a href="/teacher/delete/${teacher.id}" class="btn btn-outline-danger btn-sm" onclick="return confirm('Ви впевнені?')">Видалити</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>