<%@page language="java" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Предмет | Оновити</title>
</head>
<body>

<form action="/subject/update" method="post">
    <input type="hidden" name="id" value="${subject.id}">

    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3>Предмет | Оновити запис</h3>
    </div>
    <div class="col-md-2"></div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Назва предмету</label>
        <div class="col-md-8">
            <input type="text" name="name" class="form-control" placeholder="Назва предмету" value="${subject.name}">
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="form-group row">
        <div class="col-md-1"></div>
        <label class="col-md-2 col-form-label">Абревіатура</label>
        <div class="col-md-8">
            <input type="text" name="abbreviation" class="form-control" placeholder="Абревіатура" value="${subject.abbreviation}">
        </div>
        <div class="col-md-1"></div>
    </div>

    <div class="col-md-12">
        <button type="submit" class="btn btn-success btn-block">Оновити</button>
    </div>
</form>

<br>

<div class="col-md-12">
    <a href="/subject" class="btn btn-sm btn-outline-warning btn-block">Назад</a>
</div>

<div class="col-md-12">
    <a href="/" class="btn btn-sm btn-outline-info btn-block">На головну</a>
</div>

<br>

</body>
</html>