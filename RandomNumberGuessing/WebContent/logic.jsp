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
            String cn = Byte.toString((byte)session.getAttribute("cn"));
            byte randomNumber = Byte.parseByte(cn);
            byte ug=0;
            byte ng=0;
            boolean isCorrect=false;
            boolean isCorrectTwo=false;
            
            try {
                ug=Byte.parseByte(request.getParameter("ug"));;
                ng=Byte.parseByte(request.getParameter("ng"));;
                isCorrectTwo=true;
            }
            catch (NumberFormatException e) {
                out.println("<h1>Please enter a number between 1 and 100.</h1>");
                out.println("<a href=\"index.jsp\">Start Over?</a>\n");
            }

            if ((isCorrectTwo==true)&&(ug>100||ug<1)) {
                out.println("<h1>Please enter a number between 1 and 100</h1>");
                out.println("<a href=\"index.jsp\">Start Over?</a>\n");
            }

            if ((ug>=1)&&(ug<=100)) {
                if (ug<randomNumber) {
                    out.println("<h1>You've guessed too low. Try again.</h1>");
                    ng++;
            }
            else if (ug>randomNumber) {
                out.println("<h1>You've guessed too high. Try again.</h1>");
                ng++;
            }
            else {
                isCorrect=true;
                out.println("<h1>You guessed it!</h1>\n<h2>It took you only " + ng + " tries!</h2>\n");
                out.println("<a href=\"index.jsp\">Play Again?</a>\n");
            }
            if (!isCorrect) {
                out.println("<form method=\"post\" action=\"logic.jsp\">\n<h2>Enter guess number " + ng + 
                        ": </h2>\n<br/>\n<input type=\"number\" name=\"ug\">\n<br/><br/>\n<input type=\"submit\" value=\"Submit Guess\"/)>\n");
                out.println("<input type=\"hidden\" name=\"ng\" value=\"" + ng + "\"/>");
                out.println("</form>");
            }
        }
        %>
    </body>
</html>