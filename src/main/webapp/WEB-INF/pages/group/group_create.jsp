<%@page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Група | Добавлення</title>
</head>
<body>
<form action="/group/create" method="POST">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3>Група | Додати запис</h3>
    </div>
    <div class="col-md-2"></div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Назва</label>
        <div class="col-md-8">
            <input type="text" name="name" class="form-control" placeholder="Назва групи">
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Курс</label>
        <div class="col-md-8">
            <select name="course">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Куратор</label>
        <div class="col-md-8">
            <select name="teacher">
                <option value="-1">Select a type</option>
                <c:forEach items="${teachers}" var="teacher">
                    <option value="${teacher.id}">${teacher.surname} ${teacher.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Відділення</label>
        <div class="col-md-8">
            <select name="department">
                <option value="-1">Select a type</option>
                <c:forEach items="${departments}" var="department">
                    <option value="${department.id}">${department.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="col-md-12">
        <button type="submit" class="btn btn-success btn-block">Добавить</button>
    </div>
</form>

<br>

<div class="col-md-12">
    <a href="/group" class="btn btn-sm btn-outline-warning btn-block">Назад</a>
</div>

<div class="col-md-12">
    <a href="/" class="btn btn-sm btn-outline-info btn-block">На головну</a>
</div>

<br>

</body>
</html>