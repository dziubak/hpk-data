<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Групи</title>
</head>
<body>

<table class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th scope="col"><a href="/" class="btn btn-outline-info btn-sm btn-block">Main</a></th>
        <th scope="col">Групи</th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col" colspan="2"><a href="/group/create" class="btn btn-outline-success btn-sm btn-block">Добавити</a></th>
    </tr>
    </thead>
    <thead class="thead-light">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Назва</th>
        <th scope="col">Курс</th>
        <th scope="col">Викладач</th>
        <th scope="col">Відділення</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${groups}" var="group">
        <tr>
            <td scope="row">${group.id}</td>
            <td>${group.name}</td>
            <td>${group.course}</td>
            <td>${group.teacher.surname}</td>
            <td>${group.department.name}</td>
            <td><a href="/group/update/${group.id}" class="btn btn-outline-warning btn-sm">Оновити</a></td>
            <td><a href="/group/delete/${group.id}" class="btn btn-outline-danger btn-sm" onclick="return confirm('Ви впевнені?')">Видалити</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>