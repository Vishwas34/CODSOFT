<!-- src/main/webapp/result.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Result</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Result</h1>
        <p>Percentage: ${formattedPercentage }%</p>
        <p>Grade: ${grade}</p>
        <p>Status: ${pass ? "Pass" : "Fail"}</p>
        <a href="index.jsp">Calculate Again</a>
    </div>
</body>
</html>
