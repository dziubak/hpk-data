<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create group</title>
</head>
<body>
<form action="/group/create" method="POST">
    <h3>Curator</h3>
    <input type="text" name="teacherId">
    <h3>Name</h3>
    <input type="text" name="name">
    <h3>Course</h3>
    <select name = "course">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
    </select>
    <h3>Department</h3>
    <input type="text" name="department">
    <input type="submit" value="Create">
</form>
</body>
</html>