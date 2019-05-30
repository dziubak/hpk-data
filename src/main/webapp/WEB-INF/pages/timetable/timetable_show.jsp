<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Розклад</title>
</head>
<body>
<table class="table table-hover">
    <thead class="thead-dark">
    <tr>
        <th scope="col"><a href="/" class="btn btn-outline-info btn-sm btn-block">Main</a></th>
        <th scope="col">Розклад</th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col"></th>
        <th scope="col" colspan="2"><a href="/timetable/create" class="btn btn-outline-success btn-sm btn-block">Добавити</a></th>
    </tr>
    </thead>
    <thead class="thead-light">
    <tr>
        <th scope="col">День</th>
        <th scope="col">Номер</th>
        <th scope="col">Позиція</th>
        <th scope="col">Група</th>
        <th scope="col">Предмет</th>
        <th scope="col">Викл. 1</th>
        <th scope="col">Ау.1</th>
        <th scope="col">Викл. 2</th>
        <th scope="col">Ау.2</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${timetables}" var="timetable">
        <tr>
            <td>${timetable.dayOfWeek}</td>
            <td>${timetable.numberOfCouple}</td>
            <td>${timetable.position}</td>
            <td>${timetable.group.name}</td>
            <td>${timetable.subject.name}</td>
            <td>${timetable.teacher.surname}</td>
            <td>${timetable.classroom.number}</td>
            <td>${timetable.teacherSecond.surname}</td>
            <td>${timetable.classroomSecond.number}</td>
            <td><a href="/timetable/update/${timetable.id}" class="btn btn-outline-warning btn-sm">Оновити</a> </td>
            <td><a href="/timetable/delete/${timetable.id}" class="btn btn-outline-danger btn-sm" onclick="return confirm('Ви впевнені?')">Видалити</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>