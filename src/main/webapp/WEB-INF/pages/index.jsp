<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "fragment/script.jsp" %>

    <title>HPK info || Головна</title>
</head>
<body>
<div class="container-fluid">
    <div class="jumbotron">
        <h1 class="display-4">HPK info</h1>
        <p class="lead">Admin panel</p>
        <hr class="my-4">
        <a class="btn btn-outline-warning btn-lg" href="/timetable">Розклад</a>
        <a class="btn btn-outline-info btn-lg" href="/subject">Предмети</a>
        <a class="btn btn-outline-info btn-lg" href="/group">Групи</a>
        <a class="btn btn-outline-info btn-lg" href="/teacher">Викладачі</a>
        <a class="btn btn-outline-info btn-lg" href="/department">Відділення</a>
        <a class="btn btn-outline-info btn-lg" href="/classroom">Аудиторії</a>
    </div>
</div>
</body>
</html>