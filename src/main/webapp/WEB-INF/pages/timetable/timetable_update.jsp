<%@page language="java" pageEncoding="UTF-8" contentType="text/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Розклад | Оновлення</title>
</head>
<body>
<form action="/timetable/update" method="post">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3>Розклад | Оновити запис</h3>
    </div>
    <div class="col-md-2"></div>

    <input type="hidden" name="id" value="${timetables.id}">

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">День тижня</label>
        <div class="col-md-8">
            <select class="form-control" name="dayOfWeek">
                <c:forEach items="${daysofweek}" var="dayofweek">
                    <option value="${dayofweek}" <c:if test="${dayofweek eq timetable.dayOfWeek}">SELECTED</c:if>>${dayofweek}</option>
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
                <option <c:if test="${'1-2' eq timetable.numberOfCouple}">SELECTED</c:if>>1-2</option>
                <option <c:if test="${'3-4' eq timetable.numberOfCouple}">SELECTED</c:if>>3-4</option>
                <option <c:if test="${'5-6' eq timetable.numberOfCouple}">SELECTED</c:if>>5-6</option>
                <option <c:if test="${'7-8' eq timetable.numberOfCouple}">SELECTED</c:if>>7-8</option>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Позиція</label>
        <div class="col-md-8">
            <select name="position">
                <option <c:if test="${'чисельник' eq timetable.position}">SELECTED</c:if>>чисельник</option>
                <option <c:if test="${'знаменник' eq timetable.position}">SELECTED</c:if>>знаменник</option>
                <option <c:if test="${'повний' eq timetable.position}">SELECTED</c:if>>повний</option>
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
                    <option value="${group.id}" <c:if test="${group.name eq timetable.group.name}">SELECTED</c:if>>${group.name}</option>
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
                    <option value="${subject.id}" <c:if test="${subject.name eq timetable.subject.name}">SELECTED</c:if>>${subject.name}</option>
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
                    <option value="${teacher.id}" <c:if test="${teacher.surname eq timetable.teacher.surname}">SELECTED</c:if>>${teacher.surname}</option>
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
                    <option value="${classroom.id}" <c:if test="${classroom.number eq timetable.classroom.number}">SELECTED</c:if>>${classroom.number}</option>
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
                    <option value="${teacher.id}" <c:if test="${teacher.surname eq timetable.teacherSecond.surname}">SELECTED</c:if>>${teacher.surname}</option>
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
                    <option value="${classroom.id}" <c:if test="${classroom.number eq timetable.classroomSecond.number}">SELECTED</c:if>>${classroom.number}</option>
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