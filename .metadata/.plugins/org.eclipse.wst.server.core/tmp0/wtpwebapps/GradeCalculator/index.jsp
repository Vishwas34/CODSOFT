<!-- src/main/webapp/index.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Grade Calculator</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Grade Calculator</h1>
        <form action="calculate" method="post">
            <label for="subject1">Maths</label>
            <input type="number" id="subject1" name="subject1" min="0" max="100" required>
            <label for="subject2">English</label>
            <input type="number" id="subject2" name="subject2" min="0" max="100" required>
            <label for="subject3">Hindi</label>
            <input type="number" id="subject3" name="subject3" min="0" max="100" required>
            <label for="subject4">Science</label>
            <input type="number" id="subject4" name="subject4" min="0" max="100" required>
            <label for="subject5">Social Studies</label>
            <input type="number" id="subject5" name="subject5" min="0" max="100" required>
            <input type="submit" value="Calculate">
        </form>
    </div>
</body>
</html>
