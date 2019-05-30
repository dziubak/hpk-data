<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Викладач | Добавити</title>
</head>
<body>
    <form action="/teacher/create" method="post">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h3>Викладач | Додати запис</h3>
        </div>
        <div class="col-md-2"></div>

        <div class="form-group row">
            <div class="col-md-1"></div>
            <label class="col-md-2 col-form-label">Прізвище</label>
            <div class="col-md-8">
                <input type="text" name="surname" class="form-control" placeholder="Прізвище">
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="form-group row">
            <div class="col-md-1"></div>
            <label class="col-md-2 col-form-label">Ім'я</label>
            <div class="col-md-8">
                <input type="text" name="name" class="form-control" placeholder="Ім'я">
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="form-group row">
            <div class="col-md-1"></div>
            <label class="col-md-2 col-form-label">По-батькові</label>
            <div class="col-md-8">
                <input type="text" name="middleName" class="form-control" placeholder="По-батькові">
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="form-group row">
            <div class="col-md-1"></div>
            <label class="col-md-2 col-form-label">Інформація</label>
            <div class="col-md-8">
                <input type="text" name="info" class="form-control" placeholder="Додаткова інформація">
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="col-md-12">
            <button type="submit" class="btn btn-success btn-block">Добавить</button>
        </div>
    </form>

    <br>

    <div class="col-md-12">
        <a href="/teacher" class="btn btn-sm btn-outline-warning btn-block">Назад</a>
    </div>

    <div class="col-md-12">
        <a href="/" class="btn btn-sm btn-outline-info btn-block">На головну</a>
    </div>

    <br>

</body>
</html>