<%-- 
    Document   : Welcome
    Created on : Aug 27, 2014, 8:46:53 PM
    Author     : Lizzy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" />
        <title>Welcome</title>
    </head>
    <body>
        <h1>Fancy Application</h1>
        <p>
        <%
            Object greetingObj = request.getAttribute("welcome");
            String greetingMsg = null;
            if(greetingObj == null){
                greetingMsg = "Welcome!";
            } else if (greetingObj instanceof String){
                greetingMsg = (String) greetingObj;
            }
            
            out.print(greetingMsg);
        %>
        </p>
    </body>
</html>
