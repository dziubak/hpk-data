<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Предмети</title>
</head>
<body>

<table class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th scope="col"><a href="/" class="btn btn-outline-info btn-sm btn-block">Main</a></th>
        <th scope="col">Предмети</th>
        <th scope="col"></th>
        <th scope="col" colspan="2"><a href="/subject/create" class="btn btn-outline-success btn-sm btn-block">Добавити</a></th>
    </tr>
    </thead>
    <thead class="thead-light">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Назва</th>
        <th scope="col">Абривиатура</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${subjects}" var="subject">
        <tr>
            <th scope="row">${subject.id}</th>
            <td>${subject.name}</td>
            <td>${subject.abbreviation}</td>
            <td><a href="/subject/update/${subject.id}" class="btn btn-outline-warning btn-sm">Оновити</a> </td>
            <td><a href="/subject/delete/${subject.id}" class="btn btn-outline-danger btn-sm" onclick="return confirm('Ви впевнені?')">Видалити</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>