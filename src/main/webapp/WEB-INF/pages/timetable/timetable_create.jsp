<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" pageEncoding="UTF-8" contentType="text/html" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Розклад | Добавлення</title>
</head>
<body>

<form action="/timetable/create" method="post">
    <div class="col-md-2"></div>
    <div class="col-md-8">
    <h3>Розклад | Додати запис</h3>
    </div>
    <div class="col-md-2"></div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">День тижня</label>
        <div class="col-md-8">
            <select class="form-control" name="dayOfWeek">
                <c:forEach items="${daysofweek}" var="dayofweek">
                    <option value="${dayofweek}">${dayofweek}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Номер пари</label>
        <div class="col-md-8">
            <select name="numberOfCouple">
                <option>1-2</option>
                <option>3-4</option>
                <option>5-6</option>
                <option>7-8</option>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Позиція</label>
        <div class="col-md-8">
            <select name="position">
                <option>чисельник</option>
                <option>знаменник</option>
                <option>повний</option>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Група</label>
        <div class="col-md-8">
            <select name="group">
                <c:forEach items="${groups}" var="group">
                    <option value="${group.id}">${group.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Предмет</label>
        <div class="col-md-8">
            <select name="subject">
                <c:forEach items="${subjects}" var="subject">
                    <option value="${subject.id}">${subject.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Викладач</label>
        <div class="col-md-8">
            <select name="teacher">
                <c:forEach items="${teachers}" var="teacher">
                    <option value="${teacher.id}">${teacher.surname}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Аудиторія</label>
        <div class="col-md-8">
            <select name="classroom">
                <c:forEach items="${classrooms}" var="classroom">
                    <option value="${classroom.id}">${classroom.number}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Викладач 2</label>
        <div class="col-md-8">
            <select name="teacherSecond">
                <c:forEach items="${teachers}" var="teacher">
                    <option value="${teacher.id}">${teacher.surname}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Аудиторія 2</label>
        <div class="col-md-8">
            <select name="classroomSecond">
                <c:forEach items="${classrooms}" var="classroom">
                    <option value="${classroom.id}">${classroom.number}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <br>

    <div class="col-md-12">
        <button type="submit" class="btn btn-success btn-block">Добавить</button>
    </div>

</form>

<br>

<div class="col-md-12">
    <a href="/timetable" class="btn btn-sm btn-outline-warning btn-block">Назад</a>
</div>

<div class="col-md-12">
    <a href="/" class="btn btn-sm btn-outline-info btn-block">На головну</a>
</div>

<br>

</body>
</html>