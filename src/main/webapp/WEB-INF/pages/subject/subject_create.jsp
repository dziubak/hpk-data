<%@page pageEncoding="UTF-8" contentType="text/html" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "../fragment/script.jsp" %>

    <title>Предмет | Додати запис</title>
</head>
<body>
    <form action="/subject/create" method="post">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h3>Предмет | Додати запис</h3>
        </div>
        <div class="col-md-2"></div>

        <div class="form-group row">
            <div class="col-md-1"></div>
            <label class="col-md-2 col-form-label">Назва предмету</label>
            <div class="col-md-8">
                <input type="text" name="name" class="form-control" placeholder="Назва предмету">
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="form-group row">
            <div class="col-md-1"></div>
            <label class="col-md-2 col-form-label">Абревіатура</label>
            <div class="col-md-8">
                <input type="text" name="abbreviation" class="form-control" placeholder="Абревіатура">
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="col-md-12">
            <button type="submit" class="btn btn-success btn-block">Добавить</button>
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