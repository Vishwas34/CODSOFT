<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="random.css">
        <title>Random Number Game</title>
    </head>
    <body>
        <%
            byte mathNumber = ((byte)((Math.random()*100)+1));
            byte cn = mathNumber;
            session.setAttribute("cn", cn);
        %>
        <h1>Welcome to the Random Number Game!</h1>
        <h1>I've selected a number between 1 and 100.</h1><br/>
        <h2>Guess the number in as few tries as possible.</h2>
        <form method="post" action="logic.jsp">
            <h2>Enter your first guess: <br/><br/><input type="number" name="ug"/></h2>
            <input type="submit" value="Submit Guess"/>
            <input type="hidden" name="ng" value="1"/>
        </form>
    </body>
</html>