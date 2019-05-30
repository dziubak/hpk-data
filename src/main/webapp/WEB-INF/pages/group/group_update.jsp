<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Група | Оновлення</title>
</head>
<body>
<form action="/group/update"  method="POST">
    <input type="hidden" name="id" value="${group.id}">

    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3>Група | Оновити запис</h3>
    </div>
    <div class="col-md-2"></div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Назва</label>
        <div class="col-md-8">
            <input type="text" name="name" class="form-control" placeholder="Назва групи" value="${group.name}">
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Курс</label>
        <div class="col-md-8">
            <select name="course">
                <option <c:if test="${'1' eq group.course}">SELECTED</c:if>>1</option>
                <option <c:if test="${'2' eq group.course}">SELECTED</c:if>>2</option>
                <option <c:if test="${'3' eq group.course}">SELECTED</c:if>>3</option>
                <option <c:if test="${'4' eq group.course}">SELECTED</c:if>>4</option>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Куратор</label>
        <div class="col-md-8">
            <select name="teacher">
                <option value="-1">Оберіть викладача</option>
                <c:forEach items="${teachers}" var="teacher">
                    <option value="${teacher.id}" <c:if test="${teacher.id eq group.teacher.id}">SELECTED</c:if>>${teacher.surname} ${teacher.name}</option>
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
                <option value="-1">Оберіть відділення</option>
                <c:forEach items="${departments}" var="department">
                    <option value="${department.id}" <c:if test="${department.id eq group.department.id}">SELECTED</c:if>>${department.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="col-md-12">
        <button type="submit" class="btn btn-success btn-block">Оновити</button>
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