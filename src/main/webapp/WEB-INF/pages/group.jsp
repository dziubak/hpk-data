<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Group</title>
</head>
<body>
<div class = "asd" ng-controller="Call as call">
    <h4>GROUP</h4>
    <div>
    <h3>Name</h3>
    <input class="form-control" type="text" id="name">
    <h3>Course</h3>
    <input class="form-control" type="text" id="course">
    <h3>Department</h3>
    <input class="form-control" type="text" id="department">
    <input type="submit" name = "add" value="Add"/>
        <button type="button" ng-click="call.createGroup()">
    </div>
</body>
</html>