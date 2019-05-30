<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Аудиторія | Оновлення</title>
</head>
<body>
<form action="/classroom/update" method="post">
    <input type="hidden" name="id" value="${classroom.id}">

    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3>Аудиторія | Оновити запис</h3>
    </div>
    <div class="col-md-2"></div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Номер аудиторії</label>
        <div class="col-md-8">
            <input type="text" name="name" class="form-control" placeholder="Номер аудиторії" value="${classroom.number}">
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="col-md-12">
        <button type="submit" class="btn btn-success btn-block">Оновити</button>
    </div>
</form>

<br>

<div class="col-md-12">
    <a href="/classroom" class="btn btn-sm btn-outline-warning btn-block">Назад</a>
</div>

<div class="col-md-12">
    <a href="/" class="btn btn-sm btn-outline-info btn-block">На головну</a>
</div>

<br>

</body>
</html>