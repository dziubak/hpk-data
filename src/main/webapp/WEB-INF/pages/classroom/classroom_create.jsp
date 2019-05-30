<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Аудиторія | Добавлення</title>
</head>
<body>
    <form action="/classroom/create" method="post">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h3>Аудиторія | Додати запис</h3>
        </div>
        <div class="col-md-2"></div>

        <div class="form-group row">
            <div class="col-md-1"></div>
            <label class="col-md-2 col-form-label">Номер аудиторії</label>
            <div class="col-md-8">
                <input type="text" name="number" class="form-control" placeholder="Номер аудиторії">
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="col-md-12">
            <button type="submit" class="btn btn-success btn-block">Добавить</button>
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