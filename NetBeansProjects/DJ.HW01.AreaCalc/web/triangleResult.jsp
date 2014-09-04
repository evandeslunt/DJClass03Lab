<%-- 
    Document   : triangleResult
    Created on : Sep 3, 2014, 9:34:32 PM
    Author     : Lizzy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Triangle Result</title>
    </head>
    <body>
        <h1>Leg C of Triangle</h1>
        <p>
            <%
                Object legC = request.getAttribute("sideC");
                
                if(legC != null){
                    out.print("Length of leg C: " + legC.toString());
                } else {
                    out.print("There was a problem calculating the third leg. :(");
                }
                
            %>
        </p>
    </body>
</html>
